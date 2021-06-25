import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'search',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Searchpage'),
        ),
        body: Center(
          child: Text('This is search'),
        ),
      ),
    );
  }
}
