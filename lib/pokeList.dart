import 'package:flutter/material.dart';
import 'list.dart';

class PokeList extends StatelessWidget {
  const PokeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          itemCount: 1010,
          itemBuilder: (context, index) => PokeListItem(index: index),
        );
  }
}