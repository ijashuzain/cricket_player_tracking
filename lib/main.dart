import 'package:cricket_player_tracking/presentation/bloc/performance_bloc/performance_bloc.dart';
import 'package:cricket_player_tracking/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:cricket_player_tracking/presentation/views/player_list_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeFirebase();

  await configureDependencies();

  runApp(const CricketPlayerTrackerApp());
}

class CricketPlayerTrackerApp extends StatelessWidget {
  const CricketPlayerTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PlayerBloc>()..add(const PlayerEvent.fetchAllPlayers()),
        ),
        BlocProvider(
          create: (context) => getIt<PerformanceBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Cricket Player Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const PlayerListView(),
      ),
    );
  }
}
