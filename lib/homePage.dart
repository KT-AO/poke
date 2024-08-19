import 'package:flutter/material.dart';
import 'list.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          itemCount: 1010,
          itemBuilder: (context, index) => PikaListItem(index: index),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {},
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