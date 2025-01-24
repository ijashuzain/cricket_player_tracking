import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/presentation/bloc/performance_bloc/performance_bloc.dart';
import 'package:cricket_player_tracking/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:cricket_player_tracking/presentation/views/add_performace_view.dart';
import 'package:cricket_player_tracking/presentation/widgets/performace_list.dart';
import 'package:cricket_player_tracking/presentation/widgets/performance_chart.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerDetailView extends StatefulWidget {
  final Player player;

  const PlayerDetailView({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  State<PlayerDetailView> createState() => _PlayerDetailViewState();
}

class _PlayerDetailViewState extends State<PlayerDetailView> {
  late Player _player;

  @override
  void initState() {
    super.initState();
    _player = widget.player;
  }

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Player'),
        content: Text('Are you sure you want to delete ${_player.name}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          FilledButton(
            onPressed: () {
              context.read<PlayerBloc>().add(PlayerEvent.deletePlayer(playerId: _player.id));
              Navigator.of(context).pop(); // Close dialog
              Navigator.of(context).pop(); // Return to list
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PerformanceBloc, PerformanceState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (updatedPlayer, isOffline) {
            // Refresh player details
            context.read<PlayerBloc>().add(
                  PlayerEvent.getPlayerById(playerId: _player.id),
                );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return BlocListener<PlayerBloc, PlayerState>(
          listener: (context, state) {
            state.maybeWhen(
              playerDetails: (updatedPlayer) {
                setState(() {
                  _player = updatedPlayer;
                });
              },
              orElse: () {},
            );
          },
          child: Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  pinned: true,
                  actions: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _showDeleteConfirmation(context),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      _player.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    background: Hero(
                      tag: 'player_avatar_${_player.id}',
                      child: _player.profileImageUrl != null
                          ? CachedNetworkImage(
                              imageUrl: _player.profileImageUrl!,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                            )
                          : Container(
                              color: Theme.of(context).primaryColor,
                              child: Center(
                                child: Text(
                                  _player.name.substring(0, 1).toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 48,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Player Statistics',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 16),
                            _buildStatRow(
                              context: context,
                              label: 'Specialization',
                              value: _player.specialization,
                              icon: Icons.sports,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Age',
                              value: _player.age.toString(),
                              icon: Icons.person_outline,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Total Runs',
                              value: _player.totalRuns.toString(),
                              icon: Icons.sports_score,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Total Wickets',
                              value: _player.totalWickets.toString(),
                              icon: Icons.sports_baseball,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Best Runs in a Match',
                              value: _player.bestPerformanceRuns.toStringAsFixed(1),
                              icon: Icons.sports_cricket,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Best Wickets in Match',
                              value: _player.bestPerformanceWickets.toString(),
                              icon: Icons.sports_baseball,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Average Runs',
                              value: (_player.totalRuns / (_player.performanceRecords.length)).toStringAsFixed(1),
                              icon: Icons.analytics,
                            ),
                            _buildStatRow(
                              context: context,
                              label: 'Average Wickets',
                              value: (_player.totalWickets / (_player.performanceRecords.length)).toStringAsFixed(1),
                              icon: Icons.analytics_outlined,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Performance Chart Section
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Performance Trend',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 200,
                              child: PerformanceChart(
                                performanceRecords: _player.performanceRecords,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverToBoxAdapter(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recent Performances',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                TextButton.icon(
                                  onPressed: () => _addNewPerformance(context),
                                  icon: const Icon(Icons.add),
                                  label: const Text('Add New'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            PerformanceList(
                              performanceRecords: _player.performanceRecords,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () => _addNewPerformance(context),
              icon: const Icon(Icons.add_chart),
              label: const Text('Add Performance'),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatRow({
    required BuildContext context,
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 8),
          Text(
            '$label:',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  void _addNewPerformance(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AddPerformanceView(playerId: _player.id),
      ),
    );
  }
}
