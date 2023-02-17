// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hava_durumu/constant/Sabitler.dart';
import 'package:hava_durumu/main.dart';
import 'package:hava_durumu/model/models.dart';
import 'package:http/http.dart' as http;

import 'home_page.dart';

class SearcPage extends StatefulWidget {
  const SearcPage({super.key});

  @override
  State<SearcPage> createState() => _SearcPageState();
}

class _SearcPageState extends State<SearcPage> {
  TextEditingController myController = TextEditingController();
  int _sayac = 0;
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.brown,
          title: Text(
            "Girdiginiz sehir bulunamadı",
            style: Sabitler.getYerTextStyle(),
          ),
          content: Text(
            "lütfen ilk harfi büyük girin \n\n"
            "türkçe karekter kullanmadan şansını dene ",
            style: Sabitler.getListTSicaklikextStyle(),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: Text("Tekrar Deneyin Lütfen", style: Sabitler.getFonts()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, //ekranin tamamiyle kaplamasını sağlar
            image: AssetImage("assets/search_page.jpg")),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      hintText: "Lütfen Şehir Seçiniz",
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                  onPressed: () async {
                    var response = await http.get(Uri.parse(
                        "http://api.weatherapi.com/v1/forecast.json?key=4ee03e6401d14844abd225853231502&q=${myController.text}&days=10&aqi=no&alerts=no"));
                    var jsonBody =
                        HavaDurumu.fromJson(jsonDecode(response.body));

                    jsonBody.location?.country == null
                        ? _showDialog()
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                gelenSehir: myController.text,
                              ),
                            ));
                  },
                  child: Text("Şehir Seç"))
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
