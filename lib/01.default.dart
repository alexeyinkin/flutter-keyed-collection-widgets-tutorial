import 'package:flutter/material.dart';

// This is the Flutter's traditional way of making tabs.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Purple'),
                Tab(text: 'Orange'),
                Tab(text: 'Yellow'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ColoredBox(color: Colors.purple),
              ColoredBox(color: Colors.orange),
              ColoredBox(color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
