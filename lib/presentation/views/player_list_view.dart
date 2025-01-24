import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:cricket_player_tracking/presentation/views/add_edit_player_view.dart';
import 'package:cricket_player_tracking/presentation/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/player_card.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/error_view.dart';

class PlayerListView extends StatefulWidget {
  const PlayerListView({Key? key}) : super(key: key);

  @override
  State<PlayerListView> createState() => _PlayerListViewState();
}

class _PlayerListViewState extends State<PlayerListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Players'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context.read<PlayerBloc>().add(const PlayerEvent.fetchAllPlayers()),
          ),
        ],
      ),
      body: Column(
        children: [
          // Custom Search Bar
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchBarWidget(),
          ),

          // Player List with BLoC Integration
          Expanded(
            child: BlocBuilder<PlayerBloc, PlayerState>(
              builder: (context, state) {
                return state.maybeWhen(
                  initial: () => const SizedBox(),
                  loading: (isOfflineSync) => const LoadingView(),
                  loaded: _buildPlayerList,
                  error: _buildErrorView,
                  performanceAdded: (updatedPlayer, savedOffline) {
                    context.read<PlayerBloc>().add(const PlayerEvent.fetchAllPlayers());
                    return const LoadingView();
                  },
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddEditPlayerView()),
          ).then((val) {
            context.read<PlayerBloc>().add(const PlayerEvent.fetchAllPlayers());
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildPlayerList(List<Player> players, bool hasOfflineData) {
    return players.isEmpty
        ? const _EmptyPlayersView()
        : RefreshIndicator(
            onRefresh: () async {
              context.read<PlayerBloc>().add(const PlayerEvent.fetchAllPlayers());
            },
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: players.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: PlayerCard(player: players[index]),
              ),
            ),
          );
  }

  Widget _buildErrorView(String message, bool hasOfflineData) {
    return ErrorView(
      message: message,
      onRetry: () => context.read<PlayerBloc>().add(const PlayerEvent.fetchAllPlayers()),
    );
  }
}

class _EmptyPlayersView extends StatelessWidget {
  const _EmptyPlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sports_cricket,
            size: 64,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(
            'No Players Added Yet',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Tap the + button to add your first player',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
