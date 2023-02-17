// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/Sabitler.dart';
import 'package:hava_durumu/havaDurumuBody.dart';

import 'package:hava_durumu/service/service.dart';

class HomePage extends StatefulWidget {
  final String gelenSehir;

  const HomePage({super.key, required this.gelenSehir});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getHersey() {
    Sabitler.service = UserService();

    Sabitler.service.getTahmin(Sabitler.sehir).then((value) {
      if (value != null) {
        setState(() {
          Sabitler.guncel = value.current;
          Sabitler.tahmin = value.forecast;
          Sabitler.yer = value.location;
        });
        print(Sabitler.guncel?.condition?.text);
        Sabitler.now = DateTime.now().hour;

        print(Sabitler.now);

        print(Sabitler.tahmin?.forecastday?[1]?.hour?[9]?.tempC);
        Sabitler.guncelResim = "http:${Sabitler.guncel?.condition?.icon ?? ""}";
        Sabitler.resim = Uri.parse(Sabitler.guncelResim.toString());

        print(Sabitler.resim);
        print(Sabitler.guncelResim);
      }
    });
  }

  void cagrilanFonksiyon() async {}

  @override
  void initState() {
    Sabitler.sehir = widget.gelenSehir;

    getHersey();

    cagrilanFonksiyon();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: Sabitler.getHomePageDecoration(),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Sabitler.guncel?.lastUpdated == null
                ? Center(
                    child: Sabitler.getCircular(),
                  )
                : HavaDurumuBody()));
  }
}
