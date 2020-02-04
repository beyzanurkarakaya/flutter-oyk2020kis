import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("Butona basmadan geri döndü"); // konsolda bilgi veriyor
        Navigator.pop(context, true);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfası"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("C Sayfasına hoş Geldin!"),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text("Anasayfaya Dön ve Veri Gönder"),
                color: Colors.deepPurple[300],
              )
            ],
          ),
        ),
      ),
    );
  }
}