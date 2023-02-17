import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:location/location.dart';
import "package:google_fonts/google_fonts.dart";

import '../model/models.dart';
import '../service/service.dart';

class Sabitler {
  static late String sehir;

  static late UserService service;
  static HavaDurumuCurrent? guncel;
  static HavaDurumuForecast? tahmin;
  static HavaDurumuLocation? yer;
  static String? guncelResim;
  static Location location = Location();
  static bool? serviceEnabled;
  static PermissionStatus? permissionStatus;
  static LocationData? locationData;
  static double? enlem;
  static double? boylam;

  static var saat;
  static int? saat1;

  static var now;

  static var resim;

  static TextStyle getYerTextStyle() {
    return GoogleFonts.fredokaOne(
      color: Colors.white,
      fontSize: 20,
    );
  }

  static TextStyle getHavaIcon() {
    return GoogleFonts.fredokaOne(color: Colors.white, fontSize: 70);
  }

  static BoxDecoration getHomePageDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/homepage.jpg"), fit: BoxFit.cover),
    );
  }

  static TextStyle getListTSicaklikextStyle() {
    return GoogleFonts.pressStart2p(
      color: Colors.white,
      //fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getBilgtextStyle() {
    return GoogleFonts.pressStart2p(
      color: Colors.white,
      //fontWeight: FontWeight.bold,
    );
  }

  static BoxDecoration getListDecoration() {
    return BoxDecoration(borderRadius: BorderRadius.circular(50));
  }

  static SpinKitCubeGrid getCircular() {
    return SpinKitCubeGrid(
      color: Color.fromARGB(255, 4, 43, 74),
      size: 70,
    );
  }

  static getFonts() {
    return GoogleFonts.fredokaOne();
  }

  static BoxDecoration getBilgiPageDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/bs.jpg"), fit: BoxFit.cover),
    );
  }
}
