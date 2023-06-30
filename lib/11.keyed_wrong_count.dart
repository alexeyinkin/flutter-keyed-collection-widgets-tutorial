import 'package:flutter/material.dart';
import 'package:keyed_collection_widgets/keyed_collection_widgets.dart';

// This is the same example with keyed_collection_widgets.
// The order of the tabs is no longer a requirement,
// but there is still no check that headers and content for all tabs is present.

enum MyTabs {
  purple,
  orange,
  yellow,
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // The type to distinguish the tabs:
      home: DefaultKeyedTabController<MyTabs>.fromKeys(
        keys: MyTabs.values, // Source of truth for the length and the order.
        child: Scaffold(
          appBar: AppBar(
            bottom: KeyedTabBar.withDefaultController(
              tabs: const {
                // Missing one tab header:
                MyTabs.yellow: Tab(text: 'Yellow'),
                MyTabs.purple: Tab(text: 'Purple'),
              },
            ),
          ),
          body: KeyedTabBarView.withDefaultController(
            children: const {
              // Missing one tab content:
              MyTabs.orange: ColoredBox(color: Colors.orange),
              MyTabs.yellow: ColoredBox(color: Colors.yellow),
            },
          ),
        ),
      ),
    );
  }
}
