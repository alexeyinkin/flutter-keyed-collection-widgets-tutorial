import 'package:flutter/material.dart';

// This is the Flutter's traditional way of making tabs.
// The order in tab headers and in tab contents does not match.
// There is no error for this, just the content is wrong.

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
                Tab(text: 'Purple'), //             Must
                Tab(text: 'Orange'), //               match.
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ColoredBox(color: Colors.orange), //  Order does not match
              ColoredBox(color: Colors.purple), //    the headers.
            ],
          ),
        ),
      ),
    );
  }
}
