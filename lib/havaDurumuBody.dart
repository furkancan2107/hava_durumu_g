import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/Sabitler.dart';
import 'package:hava_durumu/gridViev_liste.dart';
import 'package:hava_durumu/search_page.dart';
import 'package:location/location.dart';

import 'home_page.dart';

class HavaDurumuBody extends StatefulWidget {
  const HavaDurumuBody({super.key});

  @override
  State<HavaDurumuBody> createState() => _HavaDurumuBodyState();
}

class _HavaDurumuBodyState extends State<HavaDurumuBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.transparent.withOpacity(0.2),
            child: CachedNetworkImage(
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl: Sabitler.guncelResim.toString()),
          ),
          Text(
            "${Sabitler.guncel?.tempC}°C",
            style: Sabitler.getHavaIcon(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${Sabitler.yer?.name}", style: Sabitler.getYerTextStyle()),
              IconButton(
                onPressed: () async {
                  Sabitler.sehir = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearcPage(),
                      ));
                  setState(() {
                    Sabitler.sehir = Sabitler.sehir;
                    print(Sabitler.sehir);
                  });
                },
                icon: Icon(Icons.search),
                color: Colors.yellow,
              )
            ],
          ),
          IconButton(
            onPressed: () async {
              await konumGetir();
            },
            icon: Icon(Icons.location_on),
            color: Colors.white,
          ),
          Liste(),
        ],
      ),
    );
  }

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
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              HomePage(gelenSehir: "${Sabitler.enlem},${Sabitler.boylam}"),
        ));
  }
}
