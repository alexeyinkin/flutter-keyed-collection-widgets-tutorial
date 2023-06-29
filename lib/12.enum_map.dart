import 'package:enum_map/enum_map.dart';
import 'package:flutter/material.dart';
import 'package:keyed_collection_widgets/keyed_collection_widgets.dart';

// This is the full-fledged example with keyed_collection_widgets and enum_map.
// The order of the tabs is no longer a requirement,
// and missing any tab now results in a compile-time error.

part '12.enum_map.g.dart';

@unmodifiableEnumMap
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
        keys: MyTabs.values, // Source of truth for the order.
        child: Scaffold(
          appBar: AppBar(
            bottom: KeyedTabBar.withDefaultController(
              tabs: const UnmodifiableMyTabsMap(
                // The compiler checks that you provide ALL values:
                yellow: Tab(text: 'Yellow'),
                purple: Tab(text: 'Purple'),
                orange: Tab(text: 'Orange'),
              ),
            ),
          ),
          body: KeyedTabBarView.withDefaultController(
            children: const UnmodifiableMyTabsMap(
              // The compiler checks that you provide ALL values:
              orange: ColoredBox(color: Colors.orange),
              yellow: ColoredBox(color: Colors.yellow),
              purple: ColoredBox(color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }
}
