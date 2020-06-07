import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LoadingBouncingGrid.square(
      borderColor: Colors.blue,
      borderSize: 6.0,
      backgroundColor: Colors.blue,
    ));
  }
}
