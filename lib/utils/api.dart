import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://api.alquran.cloud/v1";

class API {
  static Future getSurahs() {
    var url = baseUrl + "/surah";
    return http.get(url);
  }
}