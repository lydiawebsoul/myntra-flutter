import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'notifications',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notificationspage'),
        ),
        body: Center(
          child: Text('Notify me'),
        ),
      ),
    );
  }
}
