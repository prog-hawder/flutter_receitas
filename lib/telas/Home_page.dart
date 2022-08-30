import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_receitas/components/body.dart';
import 'package:flutter_receitas/constants.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Column(children: [
        Text('Menu',
       style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: kTextColor,
       // shadows: [
        //  Shadow(
         //   color: Colors.black.withOpacity(0.9),
            //offset: const Offset(3, 5) ,
           // blurRadius: 3,
         //)
        //]
       ),)
      ]),
    );
  }
}