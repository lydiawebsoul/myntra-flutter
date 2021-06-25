import 'package:flutter/material.dart';

class Studio extends StatefulWidget {
  @override
  _StudioState createState() => _StudioState();
}

class _StudioState extends State<Studio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Studio"),
        actions: <Widget>[
          IconButton(
            icon:
                const Icon(Icons.bookmark_border_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
