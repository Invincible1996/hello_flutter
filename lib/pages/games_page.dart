import 'package:flutter/material.dart';
import 'package:hello_flutter/components/game_list_item.dart';

class GamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 5, itemBuilder: (context, index) => GameListItem()),
    );
  }
}
