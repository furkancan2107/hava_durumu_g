import 'package:flutter/material.dart';
import 'package:hava_durumu/constant/Sabitler.dart';

class SporBody extends StatefulWidget {
  const SporBody({super.key});

  @override
  State<SporBody> createState() => _SporBodyState();
}

class _SporBodyState extends State<SporBody> {
  @override
  void initState() {
    Sabitler.service.getSpor().then((value) {
      if (value != null) {
        setState(() {
          Sabitler.data = value;
        });
        print(Sabitler.data?.football?[0]?.stadium ?? "anan");
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Sabitler.data?.football?[0] == null
          ? Sabitler.getCircular()
          : ListView.builder(
              itemCount: Sabitler.data?.football?.length,
              itemBuilder: (context, index) {
                var footbal = Sabitler.data?.football?[index];
                return Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.red.withOpacity(0.4)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                Colors.transparent.withOpacity(0.2),
                            radius: 30,
                            child: Text("${footbal?.start?.substring(11)}"),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Maç: ${footbal?.match}",
                              style: Sabitler.getBilgtextStyle(),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Turnuva: ${footbal?.tournament}\n\n"
                              "Tarih: ${footbal?.start?.substring(0, 11)}",
                              style: Sabitler.getBilgtextStyle(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )));
              },
            ),
    );
  }
}
