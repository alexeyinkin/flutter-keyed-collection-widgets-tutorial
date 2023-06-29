// GENERATED CODE - DO NOT MODIFY BY HAND

part of '12.enum_map.dart';

// **************************************************************************
// UnmodifiableEnumMapGenerator
// **************************************************************************

class UnmodifiableMyTabsMap<V> extends UnmodifiableEnumMap<MyTabs, V> {
  final V purple;
  final V orange;
  final V yellow;

  const UnmodifiableMyTabsMap({
    required this.purple,
    required this.orange,
    required this.yellow,
  });

  @override
  Map<RK, RV> cast<RK, RV>() {
    return Map.castFrom<MyTabs, V, RK, RV>(this);
  }

  @override
  bool containsValue(Object? value) {
    if (this.purple == value) return true;
    if (this.orange == value) return true;
    if (this.yellow == value) return true;
    return false;
  }

  @override
  bool containsKey(Object? key) {
    return key.runtimeType == MyTabs;
  }

  @override
  V? operator [](Object? key) {
    switch (key) {
      case MyTabs.purple:
        return this.purple;
      case MyTabs.orange:
        return this.orange;
      case MyTabs.yellow:
        return this.yellow;
    }

    return null;
  }

  @override
  void operator []=(MyTabs key, V value) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  Iterable<MapEntry<MyTabs, V>> get entries {
    return [
      MapEntry<MyTabs, V>(MyTabs.purple, this.purple),
      MapEntry<MyTabs, V>(MyTabs.orange, this.orange),
      MapEntry<MyTabs, V>(MyTabs.yellow, this.yellow),
    ];
  }

  @override
  Map<K2, V2> map<K2, V2>(
    MapEntry<K2, V2> Function(MyTabs key, V value) transform,
  ) {
    final purple = transform(MyTabs.purple, this.purple);
    final orange = transform(MyTabs.orange, this.orange);
    final yellow = transform(MyTabs.yellow, this.yellow);
    return {
      purple.key: purple.value,
      orange.key: orange.value,
      yellow.key: yellow.value,
    };
  }

  @override
  void addEntries(Iterable<MapEntry<MyTabs, V>> newEntries) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  V update(MyTabs key, V Function(V value) update, {V Function()? ifAbsent}) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  void updateAll(V Function(MyTabs key, V value) update) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  void removeWhere(bool Function(MyTabs key, V value) test) {
    throw UnsupportedError('Cannot remove objects from this map');
  }

  @override
  V putIfAbsent(MyTabs key, V Function() ifAbsent) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  void addAll(Map<MyTabs, V> other) {
    throw UnsupportedError('Cannot modify unmodifiable map');
  }

  @override
  V? remove(Object? key) {
    throw UnsupportedError('Cannot remove objects from this map');
  }

  @override
  void clear() {
    throw UnsupportedError('Cannot remove objects from this map');
  }

  @override
  void forEach(void Function(MyTabs key, V value) action) {
    action(MyTabs.purple, this.purple);
    action(MyTabs.orange, this.orange);
    action(MyTabs.yellow, this.yellow);
  }

  @override
  Iterable<MyTabs> get keys {
    return MyTabs.values;
  }

  @override
  Iterable<V> get values {
    return List.unmodifiable([
      this.purple,
      this.orange,
      this.yellow,
    ]);
  }

  @override
  int get length {
    return 3;
  }

  @override
  bool get isEmpty {
    return false;
  }

  @override
  bool get isNotEmpty {
    return true;
  }

  @override
  V get(MyTabs key) {
    switch (key) {
      case MyTabs.purple:
        return this.purple;
      case MyTabs.orange:
        return this.orange;
      case MyTabs.yellow:
        return this.yellow;
    }
  }

  @override
  String toString() {
    final buffer = StringBuffer('{');
    buffer.write('MyTabs.purple: ${this.purple}');
    buffer.write(', ');
    buffer.write('MyTabs.orange: ${this.orange}');
    buffer.write(', ');
    buffer.write('MyTabs.yellow: ${this.yellow}');
    buffer.write('}');
    return buffer.toString();
  }
}
