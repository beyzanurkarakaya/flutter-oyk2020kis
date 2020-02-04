import "package:flutter/material.dart";

// virgül widgetler arası
// noktalı virgül fonksiyon, döndürdüğümüz şeylerde

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Text("Buton Türleri"),
                backgroundColor: Colors.deepPurple,
            ),
          body: ButonTurleri(),
        ),
    );
  }
}

class ButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100], //şeklinde rengi ayarlayabiliyoruz
      width: 500,
      height: 500,
      child: Column(
        children: <Widget>[
          Text("Buton Türleri", style: TextStyle(fontSize: 25)),
          RaisedButton(
            onPressed: (){
              debugPrint("1. Butona Tıklandı");
            },
            color: Colors.greenAccent,
            child: Text("Raised Button"),
          ),

          RaisedButton(
            onPressed: () => debugPrint("2. Butona Tıklandı"),
            color: Colors.deepOrangeAccent,
            child: Text("Raised Button"),
          ),

          RaisedButton(
            onPressed: () => uzakFonksiyon(),
            color: Colors.yellow,
            child: Text("Raised Button"),
          ),

          IconButton(
            // color: Colors.blueAccent,
            onPressed: (){
              debugPrint("Icon Butona Tıklandı");
            },
            icon: Icon(
              Icons.all_inclusive,
              color: Colors.black,
            )
          ),

          FlatButton( // yazı butonu
            onPressed: (){
              debugPrint("Flat Butona Tıklandı ");
            },
            child: Text("Flat Button",style: TextStyle(fontSize: 20))
          )
        ],
      ),
    );
  }

  void uzakFonksiyon()
  {
    debugPrint("3. Butona Tıklandı");
  }

}

