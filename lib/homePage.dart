import 'package:flutter/material.dart';
import 'package:poke/setting.dart';
import 'list.dart';
import 'pokeList.dart';

/// ホームページ
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentbnb = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: currentbnb == 0 ? const PokeList() : const Settings(),
        

        // ListView.builder(
        //   padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        //   itemCount: 1010,
        //   itemBuilder: (context, index) => PokeListItem(index: index),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {
          setState(
            () => currentbnb = index,
          ),
        },
        currentIndex: currentbnb,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
          ),
        ],
      ),
    );
  }
}