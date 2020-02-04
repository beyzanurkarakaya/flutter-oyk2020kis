import 'package:flutter/material.dart';

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("D Sayfası"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'D Sayfası Çok Güzel');
                  },
                  child: Text("Anasayfaya String Veri Gönder"),
                ),
              ),

              // raisedbutton ekledikten sonra üzerine basıl alt + enter yaparsak onu
              // center, container, padding içine alma gibi seçenekler çıkar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 100);
                  },
                  child: Text("Anasayfaya Int Veri Gönder"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}