import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InputIslemleri();
}

class InputIslemleri extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Input İşlemleri", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Kullanıcıdan Veri Alma İşlemleri"),
              TextField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLength: 5,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.access_time),
                  hintText: "Buraya Yazınız"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}