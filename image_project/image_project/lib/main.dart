import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// resmi pubspec.yaml assets ile ekle ekledikten sonra packages get'e bas

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple // appbarın rengini etkiliyor
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resim Ekleme Türleri"),
        ),
        body: ImageTurleri(),
      )
    );
  }
}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      width: double.infinity, // enine doğru ekranın tümünü kapla
      height: MediaQuery.of(context).size.height, // boyuna ekranın tümünü kapla

      child: Column(
        children: <Widget>[
          Row( // tüm elemanlara expanded yapmak yerine row'u expanded içine de alabilirdik
            children: <Widget>[
              Expanded( // expended ekrana göre kendini hizalıyor sığdırma işlemini yapıyor
                child: Container( // bilgisayarımızdan seçtiğimiz resim
                    child:  Image.asset("images/image1.jpg")
                ),
              ),

              Expanded( // expended ekrana göre kendini hizalıyor sığdırma işlemini yapıyor
                child: Container(
                    child:  Image.asset("images/image1.jpg")
                ),
              ),

              Expanded( // expended ekrana göre kendini hizalıyor sığdırma işlemini yapıyor
                child: Container(
                    child:  Image.asset("images/image1.jpg")
                ),
              ),

              Expanded( // expended ekrana göre kendini hizalıyor sığdırma işlemini yapıyor
                child: Container(
                    child:  Image.asset("images/image1.jpg")
                ),
              ),

              Expanded( // expended ekrana göre kendini hizalıyor sığdırma işlemini yapıyor
                child: Container( // internetten çektiğimiz resim
                    child:  Image.network("https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647")
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white70,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber[100], // resim koymasak yuvarlak tek renk bir resim verirdi
                    child: Image.network("https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647", fit: BoxFit.scaleDown,),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white70,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber[100], // resim koymasak yuvarlak tek renk bir resim verirdi
                    backgroundImage: NetworkImage("https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white70,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber[100], // resim koymasak yuvarlak tek renk bir resim verirdi
                    backgroundImage: AssetImage("images/image1.jpg")
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white70,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber[100], // resim koymasak yuvarlak tek renk bir resim verirdi
                    child: Image.asset("images/image1.jpg"),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: FadeInImage.assetNetwork( // internetten aldığımız resim yüklenene kadar yüklenme gifi koyduk
                    placeholder: "images/loading.gif",
                    image: "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}