import 'package:dip_chat/chat_detail.dart';
import 'package:dip_chat/list_contact.dart';
import 'package:dip_chat/services/auth.dart';
import 'package:dip_chat/views/signin_screen.dart';
import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  @override
  _ListChatState createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: Text(
            'DIP Chat',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              },
              child: IconButton(
                  icon:
                      Icon(Icons.perm_contact_cal_rounded, color: Colors.white),
                  onPressed: null),
            ),
            IconButton(
                icon: Icon(Icons.add, color: Colors.white), onPressed: null),
            InkWell(
              onTap: () {
                AuthMethods().signOut().then((s) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                });
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.exit_to_app, color: Colors.white)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.indigo[50],
                      filled: true,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(style: BorderStyle.none)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(style: BorderStyle.none))),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 1,
                  color: Colors.indigo[100],
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: new Image.asset(
                                  'assets/profil.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => ChatDetail()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sad Boy',
                                            style: TextStyle(fontSize: 17)),
                                        Text('15:30',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black))
                                      ],
                                    ),
                                    Text('You Sent Sticker',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
