import 'package:flutter/material.dart';

// control + alt + l dediğimizde kodu kendisi düzgün bir şekilde hizalıyor

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyApp2();
}

class MyApp2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            // eklediğimiz elemanları ortaya hizalar (container, row, column da var)
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                child: Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                child: Icon(Icons.access_time),
              ),
              FloatingActionButton(
                child: Icon(Icons.accessibility),
              ),
              FloatingActionButton(
                child: Icon(
                    Icons.call_end
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
