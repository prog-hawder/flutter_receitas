import 'dart:ffi';

import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
   CardItem({
    required this.image, 
    required this.title, 
    required this.press,
  });

  final String image, title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.black),
              boxShadow: [
                BoxShadow(offset: Offset(0, 0), blurRadius: 5),
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ]),
          width: 120,
          height: 140,
          child: Column(
            children: <Widget>[
              Image.asset("$image"),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Text("$title",
                        textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
