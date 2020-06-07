import 'package:flutter/material.dart';
import 'package:memorizequran/pages/home.dart';
import 'package:memorizequran/pages/not_found_page.dart';
import 'package:memorizequran/pages/surah_page.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (_) => Home());
      case SurahPage.routeName:
        return MaterialPageRoute(builder: (_) => SurahPage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}