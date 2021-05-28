import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("My Contacts"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy"),
          new ListContact(
              gambar:
                  "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png",
              nama: "Sadboy")
        ],
      ),
    );
  }
}

class ListContact extends StatelessWidget {
  ListContact({this.gambar, this.nama});

  final String gambar;
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(image: new NetworkImage(gambar), width: 80),
            new Container(
              padding: new EdgeInsets.all(20),
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(nama, style: new TextStyle(fontSize: 20)),
                  new Text("Available",
                      style: new TextStyle(fontSize: 10, color: Colors.grey))
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
