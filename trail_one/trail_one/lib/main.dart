import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Deneme"),
        ),
        body: sayfa()
      )
    );
  }
}

class sayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white70,

      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Text("Ayın Evreleri",style: TextStyle(fontSize: 25,color: Colors.black)),
                  ),
                ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/son_hilal.jpg", ),
                ),
              ),

              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/ilk_dort.jpg"),
                ),
              ),

              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/dolunay.jpg"),
                ),
              ),

              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/son_dort.jpg"),
                ),
              ),

              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/hilal.jpg"),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Text("")
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 200,
                  height: 200,
                  child: FadeInImage.assetNetwork(
                    placeholder: "images/loading.gif",
                    image: "http://www.gunessistemleri.com/mobile/img/guness.jpg",
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () => debugPrint("Flat Butona Tıklandı"),
                  child: Text("Flat Button",style: TextStyle(fontSize: 25, color: Colors.deepPurple)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
