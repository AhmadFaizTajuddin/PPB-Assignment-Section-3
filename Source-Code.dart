import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Puzzle App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Puzzle App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: screenWidth,
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                padding: const EdgeInsets.all(15),
                color: Colors.lightBlueAccent,
                child: Image.network(
                  'https://picsum.photos/600/200',
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              width: screenWidth,
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(255, 41, 239, 71),
              child: const Text(
                'What image is that',
                style: TextStyle(fontSize: 16),
              ),
            ),

            Container(
              width: screenWidth,
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              padding: const EdgeInsets.all(20),
              color: Colors.yellowAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.food_bank),
                      Text("Food"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.landscape),
                      Text("Scenery"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.people),
                      Text("People"),
                    ],
                  ),
                ],
              ),
            ),

            const CounterCard(),
          ],
        ),
      ),
    );
  }
}

class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: const EdgeInsets.all(20),
      width: screenWidth,
      color: Colors.cyanAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Counter here: $_counter",
            style: const TextStyle(fontSize: 16),
          ),
          Container(
            color: Colors.cyan,
            child: IconButton(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
