import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
        title: Text('Profile'),
        backgroundColor: Colors.blue.shade200,
      ), //AppBar

      body: Container(
        padding: new EdgeInsets.all(20),
        child: new Center(
          child: new Column(
            children: <Widget>[
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pickaface.net/gallery/avatar/20151205_194059_2696_Chat.png"),
                  radius: 40.0),
              Text('Sadboy',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              Text('Available',
                  style: TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
