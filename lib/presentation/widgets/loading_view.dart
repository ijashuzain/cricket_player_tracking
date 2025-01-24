import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingView extends StatelessWidget {
  final LoadingType type;

  final String? message;

  final bool useShimmer;

  final Color? color;

  final double? size;

  const LoadingView({
    Key? key,
    this.type = LoadingType.circular,
    this.message,
    this.useShimmer = false,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadingWidget = _buildLoadingIndicator(context);

    if (useShimmer) {
      return Shimmer.fromColors(
        baseColor: color ?? Theme.of(context).colorScheme.primary.withOpacity(0.3),
        highlightColor: color ?? Theme.of(context).colorScheme.primary,
        child: loadingWidget,
      );
    }

    return loadingWidget;
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    final theme = Theme.of(context);
    final indicatorColor = color ?? theme.colorScheme.primary;
    final indicatorSize = size ?? 48.0;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIndicatorByType(
            context,
            indicatorColor,
            indicatorSize,
          ),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onBackground.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildIndicatorByType(
    BuildContext context,
    Color indicatorColor,
    double indicatorSize,
  ) {
    switch (type) {
      case LoadingType.circular:
        return SizedBox(
          width: indicatorSize,
          height: indicatorSize,
          child: CircularProgressIndicator(
            color: indicatorColor,
            strokeWidth: 3,
          ),
        );

      case LoadingType.linear:
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: LinearProgressIndicator(
            color: indicatorColor,
            backgroundColor: indicatorColor.withOpacity(0.2),
          ),
        );

      case LoadingType.dots:
        return _DotsLoadingIndicator(
          color: indicatorColor,
          size: indicatorSize,
        );

      case LoadingType.customShimmer:
        return _buildShimmerLoadingView(context, indicatorColor);
    }
  }

  Widget _buildShimmerLoadingView(BuildContext context, Color baseColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(3, (index) => _buildShimmerItem(baseColor))
            .expand((widget) => [
                  widget,
                  const SizedBox(height: 16),
                ])
            .toList(),
      ),
    );
  }

  Widget _buildShimmerItem(Color baseColor) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: baseColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 24,
            backgroundColor: baseColor.withOpacity(0.2),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 16,
                  width: 120,
                  decoration: BoxDecoration(
                    color: baseColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 12,
                  width: 180,
                  decoration: BoxDecoration(
                    color: baseColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class _DotsLoadingIndicator extends StatefulWidget {
  final Color color;
  final double size;

  const _DotsLoadingIndicator({
    required this.color,
    required this.size,
  });

  @override
  State<_DotsLoadingIndicator> createState() => _DotsLoadingIndicatorState();
}

class _DotsLoadingIndicatorState extends State<_DotsLoadingIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();

    _animations = List.generate(
      3,
      (index) => Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index * 0.2,
            0.6 + index * 0.2,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        3,
        (index) => AnimatedBuilder(
          animation: _animations[index],
          builder: (context, child) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: widget.size * 0.3 * _animations[index].value,
              width: widget.size * 0.3 * _animations[index].value,
              decoration: BoxDecoration(
                color: widget.color,
                shape: BoxShape.circle,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

enum LoadingType {
  circular,
  linear,
  dots,
  customShimmer,
}
