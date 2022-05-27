import 'package:flutter/material.dart';

class InfiniteScroll extends StatefulWidget {
  const InfiniteScroll({Key? key}) : super(key: key);

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  late ScrollController _controller;
  bool _loading = false;

  void _scroll() async {
    if (_controller.position.pixels >=
        _controller.position.maxScrollExtent - 100) {
      if (_loading != true) {
        _loading = true;
        // instrucciones
        print('hola');
        // instrucciones
        _loading = false;
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _controller.addListener(_scroll);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(_scroll);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _controller,
      children: const <Widget>[],
    );
  }
}
