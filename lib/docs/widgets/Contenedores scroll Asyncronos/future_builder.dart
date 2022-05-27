import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderW extends StatelessWidget {
  const FutureBuilderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
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

  Future<List> getData() async {
    Uri url = Uri.https('', '');
    var res = await http.get(url);
    return json.decode(res.body);
  }
}
