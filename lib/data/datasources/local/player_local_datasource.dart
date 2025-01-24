import 'package:cricket_player_tracking/core/error/exceptions.dart';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@lazySingleton
class PlayerLocalDataSource {

  static Database? _database;


  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('cricket_players.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 2,
      onCreate: _createDB,
      onUpgrade: _upgradeDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE players (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        age INTEGER NOT NULL,
        specialization TEXT NOT NULL,
        profile_image_url TEXT,
        total_wickets INTEGER DEFAULT 0,
        total_runs INTEGER DEFAULT 0,
        best_performance_runs INTEGER DEFAULT 0,
        best_performance_wickets INTEGER DEFAULT 0,
        created_at TEXT,
        updated_at TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE performance_records (
        id TEXT PRIMARY KEY,
        player_id TEXT NOT NULL,
        date TEXT NOT NULL,
        runs INTEGER DEFAULT 0,
        wickets INTEGER DEFAULT 0,
        match_details TEXT,
        location TEXT,
        performance_image_url TEXT,
        created_at TEXT,
        FOREIGN KEY (player_id) REFERENCES players (id) ON DELETE CASCADE
      )
    ''');
  }

  Future<void> _upgradeDB(Database db, int oldVersion, int newVersion) async {
  }

  Future<Player> savePlayer(Player player) async {
    final db = await database;

    await db.transaction((txn) async {
      final playerMap = player.toJson()
        ..remove('performance_records')
        ..remove('id');

      await txn.insert(
        'players',
        {
          ...playerMap,
          'id': player.id,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      if (player.performanceRecords.isNotEmpty) {
        for (var record in player.performanceRecords) {
          final recordMap = record.toJson()
            ..addAll({
              'player_id': player.id,
              'created_at': DateTime.now().toIso8601String(),
              'date': record.date.toIso8601String(),
            });

          await txn.insert(
            'performance_records',
            recordMap,
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      }
    });

    return player;
  }

  Future<List<Player>> getAllPlayers() async {
    final db = await database;

    final List<Map<String, dynamic>> playerMaps = await db.query('players');

    return Future.wait(playerMaps.map((playerMap) async {
      final List<Map<String, dynamic>> recordMaps = await db.query(
        'performance_records',
        where: 'player_id = ?',
        whereArgs: [playerMap['id']],
      );

      return Player.fromJson({
        ...playerMap,
        'performance_records': recordMaps,
      });
    }));
  }

  Future<Player> getPlayerById(String id) async {
    try {
      final db = await database;

      final List<Map<String, dynamic>> playerMaps = await db.query(
        'players',
        where: 'id = ?',
        whereArgs: [id],
      );

      if (playerMaps.isEmpty) {
        throw CacheException(
          message: 'Player not found in local storage',
          code: 'NOT_FOUND',
        );
      }

      final performanceRecordMaps = await db.query(
        'performance_records',
        where: 'player_id = ?',
        whereArgs: [id],
      );

      return Player.fromJson({
        ...playerMaps.first,
        'performance_records': performanceRecordMaps,
      });
    } catch (e) {
      throw CacheException(
        message: 'Failed to retrieve player from local storage: $e',
        code: 'FETCH_ERROR',
      );
    }
  }

  Future<void> updatePlayer(Player player) async {
    final db = await database;

    try {
      await db.transaction((txn) async {

        final updateCount = await txn.update(
          'players',
          player.toJson(),
          where: 'id = ?',
          whereArgs: [player.id],
        );

        if (updateCount == 0) {
          throw CacheException(
            message: 'No player found to update',
            code: 'NOT_FOUND',
          );
        }

        await txn.delete(
          'performance_records',
          where: 'player_id = ?',
          whereArgs: [player.id],
        );

        for (var record in player.performanceRecords) {
          await txn.insert(
            'performance_records',
            {
              ...record.toJson(),
              'player_id': player.id,
            },
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      });
    } catch (e) {
      throw CacheException(
        message: 'Failed to update player in local storage: $e',
        code: 'UPDATE_ERROR',
      );
    }
  }

  Future<List<Player>> searchPlayers(String query) async {
    try {
      final db = await database;
      final normalizedQuery = '%${query.toLowerCase()}%';

      final List<Map<String, dynamic>> playerMaps = await db.query(
        'players',
        where: 'LOWER(name) LIKE ? OR LOWER(specialization) LIKE ?',
        whereArgs: [normalizedQuery, normalizedQuery],
        orderBy: 'name ASC',
      );

      return await Future.wait(playerMaps.map((playerMap) async {
        final performanceRecordMaps = await db.query(
          'performance_records',
          where: 'player_id = ?',
          whereArgs: [playerMap['id']],
        );

        return Player.fromJson({
          ...playerMap,
          'performance_records': performanceRecordMaps,
        });
      }));
    } catch (e) {
      throw CacheException(
        message: 'Failed to search players in local storage: $e',
        code: 'SEARCH_ERROR',
      );
    }
  }

  Future<void> deletePlayer(String id) async {
    try {
      final db = await database;

      await db.transaction((txn) async {
        await txn.delete(
          'performance_records',
          where: 'player_id = ?',
          whereArgs: [id],
        );

        // Delete player
        final deleteCount = await txn.delete(
          'players',
          where: 'id = ?',
          whereArgs: [id],
        );

        if (deleteCount == 0) {
          throw CacheException(
            message: 'No player found to delete',
            code: 'NOT_FOUND',
          );
        }
      });
    } catch (e) {
      throw CacheException(
        message: 'Failed to delete player from local storage: $e',
        code: 'DELETE_ERROR',
      );
    }
  }
}