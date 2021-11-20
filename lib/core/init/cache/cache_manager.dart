import 'package:hive_flutter/hive_flutter.dart';
import 'i_hive_manager.dart';

class CacheManager<T> extends IHiveManager<T> {
  Box? _box;
  CacheManager(String boxKey) : super(boxKey);

  Future<void> init() async {
    registerAdapters();
    _box = await Hive.openBox(boxKey);
  }

  Future<void> close() async {
    _box?.close();
  }

  Future<void> clearAll() async {
    await _box?.clear();
  }

  @override
  Future<void> addItems(List items) {
    // TODO: implement addItems
    throw UnimplementedError();
  }

  @override
  T? getItem(String key) {
    return _box?.get(key);
  }

  @override
  List<T>? getValues() {
    // TODO: implement getValues
    throw UnimplementedError();
  }

  @override
  Future<void> putItem(String key, item) async {
    await _box?.put(key, item);
  }

  @override
  Future<void> putItems(List items) {
    // TODO: implement putItems
    throw UnimplementedError();
  }

  @override
  Future<void> removeItem(String key) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  void registerAdapters() {}
}
