import 'package:flutter/material.dart';
import 'package:rounded_letter/shape_type.dart';
import 'package:rounded_letter/rounded_letter.dart';

class ListItem extends StatelessWidget {
  ListItem({@required this.title,@required this.subtitle,@required this.leadingText});

  final String title;
  final String subtitle;
  final String leadingText;

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: RoundedLetter(
          text: leadingText,
          shapeColor: Colors.blue,
          shapeType: ShapeType.circle,
          shapeSize: 50,
          fontSize: 15,
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
