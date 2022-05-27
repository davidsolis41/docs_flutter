import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StreamBuilderW extends StatelessWidget {
  const StreamBuilderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _getDataStream(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return ListView(
              children: snapshot.data!.map((e) => Container()).toList());
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('no hay datos'),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  _getDataStream() {}
}
