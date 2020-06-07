import 'package:flutter/material.dart';
import 'package:memorizequran/pages/surah_page.dart';
import 'package:memorizequran/widgets/dashboard_card.dart';
import 'package:memorizequran/widgets/navigation_drawer.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Memorize Quaran'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                DashboardCard(
                  image: "assets/images/quran.svg",
                  title: "Suras",
                  routeName: SurahPage.routeName,
                ),
                DashboardCard(
                  image: "assets/images/brain.svg",
                  title: "Memorized",
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                DashboardCard(
                  image: "assets/images/list.svg",
                  title: "Revise",
                ),
                DashboardCard(
                  image: "assets/images/exam.svg",
                  title: "Test",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
