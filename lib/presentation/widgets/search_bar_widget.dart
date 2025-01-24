import 'package:cricket_player_tracking/core/utils/debouncer.dart';
import 'package:cricket_player_tracking/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: 'Search players...',
      leading: const Icon(Icons.search),
      onChanged: (query) {
        _debouncer.run(() {
          context.read<PlayerBloc>().add(PlayerEvent.searchPlayers(query: query));
        });
      },
      padding: const MaterialStatePropertyAll<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}