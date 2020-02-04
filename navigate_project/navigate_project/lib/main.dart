import 'package:flutter/material.dart';
import 'package:navigate_project/page_four.dart';
import 'package:navigate_project/page_one.dart';
import 'package:navigate_project/page_three.dart';
import 'package:navigate_project/page_two.dart'; // yeni dart dosyasını import etmeden çalışmaz hata verir

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İşlemleri"),
          backgroundColor: Colors.deepPurple,
        ),
        body: NavigasyonIslemleri(),
      ),
    );
  }
}

class NavigasyonIslemleri extends StatelessWidget {
  String gonderilenVeri = "Navigasyon İşlemleri Sayfasına Geldin!";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                => ASayfasi()));
          },
          color: Colors.orange[100],
          child: Text("A Sayfasına Git"),
        ),

        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                => BSayfasi(gonderilenVeri)));
          },
          color: Colors.orange[200],
          child: Text("B Sayfasına Veri Gönder"),
        ),

        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                => CSayfasi())
            ).then((gelenDeger){
              debugPrint("Pop İşleminden Gelen Veri: $gelenDeger");
            });
          },
          color: Colors.orange[300],
          child: Text("C Sayfasına Git ve Veri Getir"),
        ),

        RaisedButton(
          onPressed: () {
            _navigateAndDisplaySlection(context);
          },
          color: Colors.orange[400],
          child: Text("D Sayfasına Git Veriyi Gelirken Göster"),
        ),

        RaisedButton(
          onPressed: ()
          async {
            String value = await Navigator.push(context,
            new MaterialPageRoute<String>(
                builder: (BuildContext context) {
                  return new Center(
                    child: new GestureDetector(
                      child: Container(
                        color: Colors.white70,
                        child: Text('Ekran silindi,''geri dönmek için tıklayın', style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                      ),
                      onTap: () {Navigator.pop(context, "Anasayfaya dönüldü");},
                    ),
                  );
                }
            ));
            print(value);
          },
          color: Colors.orange[500],
          child: new Text("Ekranı Değiştirip Geri Dön"),
        ),

      ],
    );
  }
}

_navigateAndDisplaySlection(BuildContext context) async {
  final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DSayfasi()),
  );

  // diğer sayfadan çektiğimiz veriyi, bu sayfada ekranda göstermek için
  Scaffold.of(context)
  ..removeCurrentSnackBar()
  ..showSnackBar(SnackBar(
      // ekranda kalma süresi
      duration: Duration(seconds: 5),
      // yansıtma işlemi
      content: Text("Gelen Verimiz: $result")));
}