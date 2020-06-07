import 'package:flutter/material.dart';
import 'package:memorizequran/pages/home.dart';
import 'package:memorizequran/router.dart';

void main () => runApp(MaterialApp(
  title: "My App",
  debugShowCheckedModeBanner: false,
  onGenerateRoute: Router.generateRoute,
  initialRoute: Home.routeName,
));

