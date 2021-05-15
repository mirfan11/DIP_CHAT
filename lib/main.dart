import 'package:dip_chat/constants.dart';
import 'package:dip_chat/welcome.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      home: Welcome(),
    );
  }
}
