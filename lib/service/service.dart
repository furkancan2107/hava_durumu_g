// ignore_for_file: unnecessary_brace_in_string_interps, prefer_final_fields

import 'dart:convert';

import 'package:hava_durumu/model/sporModel.dart';

import '../model/models.dart';
import 'package:http/http.dart' as http;

class UserService {
  Api _api = Api();

  Future getTahmin(String sehir) async {
    /* String url =
        "http://api.weatherapi.com/v1/forecast.json?key=4ee03e6401d14844abd225853231502&q=${sehir}&days=10&aqi=no&alerts=no";
    */
    var response = await http.get(Uri.parse(_api.hangiSehir(sehir)));
    if (response.body.isNotEmpty) {
      var jsonBody = HavaDurumu.fromJson(jsonDecode(response.body));
      return jsonBody;
    }
    return null;
  }

  Future getSpor() async {
    String url =
        "http://api.weatherapi.com/v1/sports.json?key=4ee03e6401d14844abd225853231502&q=Turkey&days=10&aqi=no&alerts=no";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonBody = Spor.fromJson(jsonDecode(response.body));
      return jsonBody;
    }
    return;
  }
}

class Api {
  String url =
      "http://api.weatherapi.com/v1/forecast.json?key=4ee03e6401d14844abd225853231502&q=";
  int days = 10;
  dynamic hangiSehir(String city) {
    return "${url}${city}&days=20&aqi=no&alerts=no}";
  }
}
