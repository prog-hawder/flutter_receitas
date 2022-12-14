// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'constants.dart';
import 'startpage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Receitas',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          // ignore: deprecated_member_use
          textTheme: TextTheme(headline2: TextStyle(color: kTextColor, fontSize: 20),)
        ),
         textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomePage(),
      
    ));

