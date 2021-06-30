//import 'dart:js';

import 'package:dip_chat/constants.dart';
import 'package:dip_chat/views/list_chat.dart';
import 'package:dip_chat/services/auth.dart';
import 'package:dip_chat/views/signin_screen.dart';
import 'package:dip_chat/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIP Chat',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: FutureBuilder(
        future: AuthMethods().getCurrentUser(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListChat();
          } else {
            return Welcome();
          }
        },
      ),
    );
  }
}
