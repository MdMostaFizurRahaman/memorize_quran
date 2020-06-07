import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:memorizequran/utils/api.dart';
import 'package:memorizequran/models/surah.dart';
import 'package:memorizequran/widgets/loading.dart';
import 'package:memorizequran/widgets/list_item.dart';

class SurahPage extends StatefulWidget {
  static const routeName = '/surahs';

  @override
  _SurahPageState createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  var surahs = new List<Surah>();

  _getSurahs() {
    API.getSurahs().then((response) {
      setState(() {
        var result = jsonDecode(response.body);
        Iterable list = result['data'];
        surahs = list.map((model) => Surah.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getSurahs();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memorize Quaran'),
        centerTitle: true,
      ),
      body: surahs.length > 0
          ? ListView.builder(
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                return ListItem(
                  title: surahs[index].name,
                  subtitle: surahs[index].englishName,
                  leadingText: surahs[index].number.toString(),
                );
              },
            )
          : Loading(),
    );
  }
}
