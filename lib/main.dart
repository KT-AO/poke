
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Poke'),
    );
  }
}

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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

class PikaListItem extends StatelessWidget {
  const PikaListItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(.5),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
              ),
          ),
        ),
      ),
      title: const Text(
        'pikachu',
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'electric',
      ),
      trailing: const Icon(Icons.navigate_next),
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => const PokeDetail()),
        ),
      },
    );
  }
}




//ポケモン詳細ページ
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
          const Chip(
            label: Text('electric'),
            backgroundColor: Colors.yellow,
          )
        ]),
      ),
    );
  }
}
