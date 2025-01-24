import 'package:cached_network_image/cached_network_image.dart';
import 'package:cricket_player_tracking/core/utils/date_formatter.dart';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:flutter/material.dart';

class PerformanceList extends StatelessWidget {
  final List<PerformanceRecord> performanceRecords;

  const PerformanceList({
    Key? key,
    required this.performanceRecords,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sortedRecords = List<PerformanceRecord>.from(performanceRecords)..sort((a, b) => b.date.compareTo(a.date));

    if (sortedRecords.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'No performance records yet. Add your first performance record!',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sortedRecords.length,
      itemBuilder: (context, index) {
        final record = sortedRecords[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text(
                record.runs.toStringAsFixed(1),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontSize: 12,
                ),
              ),
            ),
            title: Text(
              DateFormatter.formatDateTime(record.date),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: record.matchDetails != null
                ? Text(
                    record.matchDetails!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                : null,
            trailing: record.performanceImageUrl != null
                ? GestureDetector(
                    onTap: () => _showPerformanceImage(
                      context,
                      record.performanceImageUrl!,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: record.performanceImageUrl!,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }

  void _showPerformanceImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.contain,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
        ),
      ),
    );
  }
}
