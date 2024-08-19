import 'package:flutter/material.dart';

/// ポケモン詳細ページ
class PokeDetail extends StatefulWidget {
  const PokeDetail({super.key});

  @override
  State<PokeDetail> createState() => _PokeDetailState();
}

class _PokeDetailState extends State<PokeDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.network(
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
            height: 100,
            width: 100,
          ),
          const Text(
            'pikachu',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Chip(
            backgroundColor: Colors.yellow,
            label: Text(
              'electric',
              style: TextStyle(
                color: Colors.yellow.computeLuminance() > 0.5
                ? Colors.black
                : Colors.white
              ),
            ),
          )
        ]),
      ),
    );
  }
}
