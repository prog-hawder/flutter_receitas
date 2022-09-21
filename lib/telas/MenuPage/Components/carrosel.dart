import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

 CarouselSlider Carrosel() {
  final List<String> imgList = [
  'assets/image/jantar.png',
  'assets/image/petiscos.png',
  'assets/image/comidastipicas.png',
];
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: 170,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ), 
        items: imgList
  .map((item) => Container(
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0,),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ))
  .toList(),);
  }
