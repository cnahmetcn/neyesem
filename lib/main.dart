import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(YemekApp());
}

class YemekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Bugün Ne Yesem",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

/*
class YemekSayfasi extends StatelessWidget {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print("Çorba Butonuna Tıklandı");
                  },
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print("Yemek Butonuna Tıklandı");
                  },
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print("Tatlı Butonuna Tıklandı");
                  },
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
*/

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void resimler() {
    setState(() {
      corbaNo = Random().nextInt(4) + 1;
      yemekNo = Random().nextInt(4) + 1;
      tatliNo = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: resimler,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: resimler,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      corbaNo = Random().nextInt(4) + 1;
                      yemekNo = Random().nextInt(4) + 1;
                      tatliNo = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
