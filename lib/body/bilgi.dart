import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constant/Sabitler.dart';

class Bilgi extends StatefulWidget {
  final int id;
  const Bilgi({super.key, required this.id});

  @override
  State<Bilgi> createState() => _BilgiState();
}

class _BilgiState extends State<Bilgi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 24,
      itemBuilder: (context, index) {
        var tahmin = Sabitler.tahmin?.forecastday?[widget.id];
        return Expanded(
            child: SingleChildScrollView(
                child: Container(
          decoration: Sabitler.getListDecoration(),
          child: Column(
            children: [
              Card(
                color: Colors.brown.withOpacity(0.8),
                child: ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: "http:${tahmin!.hour![index]!.condition!.icon}",
                    placeholder: (context, url) => CircularProgressIndicator(),
                  ),
                  title: Text(
                    "${tahmin.hour?[index]?.time?.substring(11)}",
                    style: Sabitler.getBilgtextStyle(),
                  ),
                  subtitle: Text(
                    "${tahmin.hour?[index]?.tempC}°C",
                    style: Sabitler.getBilgtextStyle(),
                  ),
                ),
              )
            ],
          ),
        )));
      },
    );
  }
}
