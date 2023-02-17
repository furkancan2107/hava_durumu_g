// ignore_for_file: unnecessary_brace_in_string_interps, prefer_final_fields

import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/models.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

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
}

class Api {
  String url =
      "http://api.weatherapi.com/v1/forecast.json?key=4ee03e6401d14844abd225853231502&q=";
  int days = 10;
  dynamic hangiSehir(String city) {
    return "${url}${city}&days=10&aqi=no&alerts=no}";
  }
}
