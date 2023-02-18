import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/Sabitler.dart';
import 'package:hava_durumu/body/sporBody.dart';

class Spor extends StatelessWidget {
  const Spor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Sabitler.getSporPageDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SporBody(),
      ),
    );
  }
}
