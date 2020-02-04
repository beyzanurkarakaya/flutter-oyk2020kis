import 'package:flutter/material.dart';

class Kayit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Ekranı',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple[200],
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Kayıt Ekranı",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,  //gizlenebilirlik açık
                        maxLength: 30,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.text_format),
                          hintText: "İsim Soyisim",
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                      ),

                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,  //gizlenebilirlik açık
                        maxLength: 30,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: "Email",
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                      ),

                      TextField(
                        keyboardType: TextInputType.number,
                        obscureText: true,  //gizlenebilirlik açık
                        maxLength: 8,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Parola",
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                      ),

                      RaisedButton(
                        child: Text("Kayıl Ol"),
                        color: Colors.deepPurple[200],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}