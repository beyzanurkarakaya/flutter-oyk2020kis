import 'package:flutter/material.dart';

// dart dosyasıı açarken verdiğimiz isim önemli değil içindeki classın ismi önemli maindekiyle (navigate ettiğimizle) aynı olmalı

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Sayfası"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Text("A Sayfasına Hoş Geldin!")
            ],
          ),
        ),
      ),
    );
  }
}