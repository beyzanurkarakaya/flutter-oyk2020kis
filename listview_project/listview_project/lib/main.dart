import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("ListView Example"),
          ),
          body: BodyLayout(),
        )
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Column(
    children: <Widget>[
      Container(child: Card(
        margin: EdgeInsets.all(10),
        elevation: 20,
        color: Colors.amber,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.accessibility),radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üniversitesi"),
          trailing: Icon(Icons.call),
        ),
      ),
      ),
      Divider(color: Colors.black,height: 30), // araya çizgi koyuyor

      Container(child: Card(
        margin: EdgeInsets.all(10),
        elevation: 20,
        color: Colors.amber,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.accessibility),radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üniversitesi"),
          trailing: Icon(Icons.call),
        ),
      ),
      ),
      Divider(color: Colors.black,height: 30),
    ],
  );
}

/*
Widget _myListView(BuildContext context) {
  final ulkeler = ["Türkiye","Polonya","Portekiz","Macaristan"
                    ,"Almanya","Fransa","ispanya","Lüksemburg"
                    ,"İtalya","Avusturya","Çek Cumhuriyeti"];

  // final baskentler = ["Ankara",];

  return ListView.builder(
    itemCount: ulkeler.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(ulkeler[index]),
        subtitle: Text("Ülke"), // baskentler diye ayrı bir dizi oluşturup subtitle: Text(baskentler[index]) şeklinde de yazabiliriz
        onTap: () => print(ulkeler[index] + " tıklandı"),
      );
    }
  );
}
*/

/*
Widget _myListView(BuildContext context) {
  return ListView(
      children: ListTile.divideTiles(
      context: context,
          tiles: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.accessibility), radius: 15),
              title: Text("Gizem Ece Çetin"),
              trailing: Icon(Icons.all_inclusive),
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.accessibility), radius: 15),
              title: Text("Kadriye Macit"),
              trailing: Icon(Icons.all_inclusive),
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.accessibility), radius: 15),
              title: Text("Gizem Ece Çetin"),
              trailing: Icon(Icons.all_inclusive),
            ),
      ],
      ).toList(),
  );
}
*/