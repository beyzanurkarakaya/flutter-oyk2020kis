import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Kayit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Kayit> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final emailController = TextEditingController();
  final parolaController = TextEditingController();

  void yaziDegis(yeni) {
    setState(() {
      //girilenMetin = yeni;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
          backgroundColor: Colors.pink,
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.text, //klavye tipi
                  maxLength: 20, //alabilecek max karakter
                  cursorColor: Colors.pink, //imleç rengi
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.wb_sunny), //başına ikon
                      hintText: "Email", //y silik yazı
                      suffixIcon: Icon(Icons.brightness_3), //sonuna ikon
                      labelText: "Kullanıcı adı", //tıklandığında yazarken de hala yukarıda kalır
                      border: OutlineInputBorder(  //dışını kutu içine alır
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))
                      ),
                      filled: true, // fillColor ile renk kodunu çalıştırmak için true olmalı
                      fillColor: Colors.red.shade50 // arkafonun rengi
                  ),
                  controller: emailController,  // girilen veriyi kontrol etmek için ekliyoruz
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,  //gizlenebilirlik açık
                  maxLength: 8,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    hintText: "Parola",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  controller: parolaController,
                ),
                RaisedButton(
                  child: Text(
                      "Giriş yap"),
                  color: Colors.pink[200],
                  onPressed: (){



                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import ettğimiz şeyi aşağıda kullanmazsak gri olur

class Anasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Anasayfa> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final parolaController = TextEditingController();

  /*
  String girilenMetin="";

  // bu fonksiyonu yazıp onsubmitte çağırırsak
  // yazdığımız yazı kutucuğa yazılır
  void yaziDegis(yeni) {
    setState(() {
      girilenMetin = yeni;
    });
  }
   */

  final Firestore _firestore = Firestore.instance;
  // instance ile firestoreun özelliklerini kullanabilme özelliği kazanırız
  // bunu yazmazsak nokta koyunca firestore fonksiyonları gelmez

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
          backgroundColor: Colors.deepPurple[200],
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Map<String, dynamic> veriEkle = Map();
                    veriEkle["İsim"] = "Kadriye";
                    veriEkle["Yaş"] = 23;

                    _firestore.collection("Kullanıcılar").document("Öğrenci").setData(veriEkle);

                    _firestore.collection("Kullanıcılar").document("Öğretmen").setData(veriEkle);
                  },
                  color: Colors.deepPurple[100],
                  child: Text("Veri Ekleme"),
                ) ,

                RaisedButton(
                  onPressed: () {
                    _firestore.document("Kullanıcılar/Öğrenci").delete();

                    _firestore.document("Kullanıcılar/Öğretmen").updateData({"İsim": FieldValue.delete()});
                  },
                  color: Colors.deepPurple[200],
                  child: Text("Veri Silme"),
                ),

                RaisedButton(
                  onPressed: () {
                    _firestore.document("Kullanıcılar/Öğrenci").updateData({
                      "İsim" : "Onur"
                    });
                  },
                  color: Colors.deepPurple[300],
                  child: Text("Veri Güncelleme"),
                ),

                RaisedButton(
                  onPressed: veriOkuma,
                  color: Colors.deepPurple[400],
                  child: Text("Veri Okuma"),
                ),

                /*
                TextField(
                    onSubmitted: (String s){ // yazma işlemi tamamlandıktan sonra veriyle işlem yapar
                      debugPrint("On Submit : $s");
                      // işlem bittikten sonra değişkenimizi, girilen veriye eşitliyoruz
                      girilenMetin=s;
                      yaziDegis(s);
                    },

                    onChanged: (String s){ // klavyede yazdıkça anlık veriyle işlem yapar
                      debugPrint("On Change: $s");
                    }
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  color: Colors.deepPurple.shade50,
                  child: Align(
                    alignment: Alignment.center,
                    // yukarıda tanımladığımız veriyi gösteriyoruz
                    child: Text(girilenMetin),
                  ),
                ),
               */
              ],
            ),
          ),
        ),

      ),
    );
  }

  Future veriOkuma()async {
    DocumentSnapshot documentSnapshot = await _firestore.document("Kullanıcılar/Öğrenci").get();

    // konsolda yazıyor
    debugPrint("Öğrencinin İsmi: " + documentSnapshot.data["İsim"].toString());
    debugPrint("Öğrencinin Özellikleri: " + documentSnapshot.data.toString());
    debugPrint("Öğrencinin Yaşı: " + documentSnapshot.data["Yaş"].toString());
  }

}
*/