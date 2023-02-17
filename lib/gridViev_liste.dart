import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hava_durumu/bilgiSayfas%C4%B1.dart';

import 'constant/Sabitler.dart';

class Liste extends StatelessWidget {
  const Liste({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            var tahmin1 = Sabitler.tahmin?.forecastday?[index + 1];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => tahmin1.date != null
                            ? BilgiSayfasi(
                                index: index,
                              )
                            : CircularProgressIndicator()));
              },
              child: Card(
                color: Colors.transparent.withOpacity(0.2),
                child: Container(
                    decoration: Sabitler.getListDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent.withOpacity(0.2),
                          child: CachedNetworkImage(
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              imageUrl:
                                  "http:${tahmin1?.hour?[Sabitler.now]?.condition?.icon}"),
                        ),
                        Text(
                            "${Sabitler.tahmin?.forecastday?[index]?.hour?[Sabitler.now]?.tempC}°C",
                            style: Sabitler.getListTSicaklikextStyle()),
                        Text("${tahmin1!.date}",
                            style: Sabitler.getListTSicaklikextStyle()),
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
