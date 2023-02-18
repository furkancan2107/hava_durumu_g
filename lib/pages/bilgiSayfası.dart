import 'package:flutter/material.dart';
import 'package:hava_durumu/body/bilgi.dart';
import 'package:hava_durumu/constant/Sabitler.dart';

class BilgiSayfasi extends StatelessWidget {
  final int index;
  const BilgiSayfasi({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Sabitler.getBilgiPageDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Bilgi(id: index),
      ),
    );
  }
}
