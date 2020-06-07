import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Memorize Quaran'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Page Not found'),
      ),
    );
  }
}
