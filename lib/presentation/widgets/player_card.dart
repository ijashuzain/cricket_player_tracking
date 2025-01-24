import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/presentation/views/player_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlayerCard extends StatelessWidget {
  final Player player;

  const PlayerCard({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PlayerDetailsScreen(player: player),
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Player Avatar
              Hero(
                tag: 'player_avatar_${player.id}',
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: player.profileImageUrl != null ? CachedNetworkImageProvider(player.profileImageUrl!) : null,
                  child: player.profileImageUrl == null
                      ? Text(
                          player.name.substring(0, 1).toUpperCase(),
                          style: const TextStyle(fontSize: 24),
                        )
                      : null,
                ),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${player.specialization} • Age: ${player.age}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        if (player.specialization == "Bowler") ...[
                          _StatChip(
                            icon: Icons.sports_cricket,
                            label: 'Wickets: ${player.totalWickets}',
                          ),
                          const SizedBox(width: 8),
                          _StatChip(
                            icon: Icons.star,
                            label: 'Best: ${player.bestPerformanceWickets}',
                          ),
                        ] else ...[
                          _StatChip(
                            icon: Icons.sports_score,
                            label: 'Runs: ${player.totalRuns}',
                          ),
                          const SizedBox(width: 8),
                          _StatChip(
                            icon: Icons.star,
                            label: 'Best: ${player.specialization == "Bowler" ? player.bestPerformanceWickets : player.bestPerformanceRuns}',
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _StatChip({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
          ),
        ],
      ),
    );
  }
}
