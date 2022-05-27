import 'dart:async';

class ItemsStream {
  final StreamController<List> _itemsStreamController =
      StreamController.broadcast();

  Stream<List> get itemsStream => _itemsStreamController.stream;

  Function(List) get itemSink => _itemsStreamController.sink.add;

  void disposeItemsStreamController() {
    _itemsStreamController.close();
  }
}
