import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_receitas/constants.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _current = 0;
  final List<String> imgList = [
  'assets/image/jantar.png',
  'assets/image/petiscos.png',
  'assets/image/comidastipicas.png',
];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Carrosel(),
        SizedBox(
          height: 15,
        ),
        Destaques(),

      ],
    );
  }

  Row Destaques() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Receita em Destaque',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),),
          ),
          Expanded(child: Container()),
          Align(alignment: Alignment.bottomRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text('...',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(160, 0, 243, 8)
            ),),
          ),),
          SizedBox(
         width: 10,
      ),
        ],
      );
  }

  CarouselSlider Carrosel() {
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
}
