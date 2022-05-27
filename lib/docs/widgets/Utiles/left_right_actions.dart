import 'package:flutter/material.dart';

class LeftRightActions extends StatelessWidget {
  LeftRightActions({Key? key}) : super(key: key);

  final List<String> _items = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        final String item = _items[index];
        return Dismissible(
          key: Key(item),
          // evento deslizar
          onDismissed: (DismissDirection dir) {
            if (dir == DismissDirection.startToEnd) {
              // instrucciones específicas swipe derecha - izquierda
            } else {
              // instrucciones específicas swipe izquierda - derecha
            }
          },
          // Lo que se muestra al hacer swipe izquierda - derecha
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            child: const Icon(Icons.delete),
          ),
          // Lo que se muestra al hacer swipe derecha - izquierda
          secondaryBackground: Container(
            color: Colors.green,
            alignment: Alignment.centerRight,
            child: const Icon(Icons.thumb_up),
          ),
          child: ListTile(
            title: Center(child: Text(item)),
          ),
        );
      },
    );
  }
}
