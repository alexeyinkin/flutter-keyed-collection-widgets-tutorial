import 'package:flutter/material.dart';

// This is the Flutter's traditional way of making tabs.
// The number of tab headers does not match the length of TabController.
// This results in a runtime exception.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Purple'), // OK.
                Tab(text: 'Orange'), // OK.
                Tab(text: 'Yellow'), // No content for this tab.
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ColoredBox(color: Colors.orange),
              ColoredBox(color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
