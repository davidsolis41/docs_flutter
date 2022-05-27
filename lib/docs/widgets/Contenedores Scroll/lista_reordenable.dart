import 'package:flutter/material.dart';

class ListaReordenable extends StatefulWidget {
  const ListaReordenable({Key? key}) : super(key: key);

  @override
  State<ListaReordenable> createState() => _ListaReordenableState();
}

class _ListaReordenableState extends State<ListaReordenable> {
  final List<String> _items = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').toList();

  // Controlador para cuando se reordenan los elementos
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final item = _items.removeAt(oldIndex);
      _items.insert(newIdx, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: _onReorder,
      children: _items
          .map((e) => ListTile(
                key: Key(e),
                title: Text('item $e'),
                trailing: const Icon(Icons.reorder),
              ))
          .toList(),
    );
  }
}
