// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, unrelated_type_equality_checks, use_build_context_synchronously, unused_element, unused_import

import 'dart:convert';
import "package:flutter_spinkit/flutter_spinkit.dart";

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/Sabitler.dart';
import 'package:hava_durumu/model/models.dart';
import 'package:hava_durumu/pages/search_page.dart';

import 'package:hava_durumu/service/service.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'package:location/location.dart';

import 'pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future konumGetir() async {
    Sabitler.serviceEnabled = await Sabitler.location.serviceEnabled();
    if (!Sabitler.serviceEnabled!) {
      Sabitler.serviceEnabled = await Sabitler.location.requestService();
      if (!Sabitler.serviceEnabled!) {
        return;
      }
    }
    Sabitler.permissionStatus = await Sabitler.location.hasPermission();
    if (Sabitler.permissionStatus == PermissionStatus.denied) {
      Sabitler.permissionStatus = await Sabitler.location.requestPermission();
      if (Sabitler.permissionStatus != PermissionStatus.granted) {
        return;
      }
    }
    Sabitler.locationData = await Sabitler.location.getLocation();
    Sabitler.enlem = Sabitler.locationData?.latitude;
    Sabitler.boylam = Sabitler.locationData?.longitude;
    print(Sabitler.enlem);
    print(Sabitler.boylam);
  }

  Widget? home;
  @override
  void initState() {
    super.initState();
    konumGetir().then((value) {
      setState(() {
        print(Sabitler.enlem);
        home = HomePage(gelenSehir: "${Sabitler.enlem},${Sabitler.boylam}");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 732),
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: home != null ? home : Center(child: Sabitler.getCircular())),
    );
  }
}
