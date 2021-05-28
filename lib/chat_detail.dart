import 'package:dip_chat/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
      bottomSheet: getBottomSheet(),
    );
  }

  Widget getBottomSheet() {
    return Container(
      height: 70,
      color: Colors.grey[100],
      child: Row(
        children: <Widget>[
          Icon(
            Icons.camera_alt,
            color: Colors.blue,
            size: 28,
          ),
          Icon(
            Icons.attach_file,
            color: Colors.blue,
            size: 28,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Ketik pesan..'),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          Icon(
            Icons.send,
            color: Colors.blue,
            size: 28,
          ),
        ],
      ),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.blue.shade200,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.white)),
      title: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Profile()));
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profil.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sadboy',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Active now',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ],
          )
        ],
      ),
      actions: <Widget>[
        Icon(
          Icons.call,
          color: Colors.white,
          size: 29,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.dehaze,
          color: Colors.white,
          size: 29,
        ),
      ],
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        BubbleChat(
          isMe: true,
          message: "hallo apa kabar?",
          profile: "assets/profil.png",
        ),
        BubbleChat(
          isMe: true,
          message: "gimana keadaan kamu disekolah?",
          profile: "assets/profil.png",
        ),
        BubbleChat(
          isMe: true,
          message: "apakah bahagia ?",
          profile: "assets/profil.png",
        ),
      ],
    );
  }
}

class BubbleChat extends StatelessWidget {
  final bool isMe;
  final String profile;
  final String message;
  final int messageType;
  const BubbleChat({
    Key key,
    this.isMe,
    this.profile,
    this.message,
    this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Row(
          children: <Widget>[
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(profile), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 15),
                  ),
                ))
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
