import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

@module
abstract class AppModule {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<Database> get database async {
    final dbPath = await getDatabasesPath();
    final pathToDb = path.join(dbPath, 'cricket_player.db');

    return openDatabase(
      pathToDb,
      version: 1,
      onCreate: (Database db, int version) async {

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
      },
    );
  }
}
