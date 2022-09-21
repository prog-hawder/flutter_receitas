import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_receitas/constants.dart';

import 'Components/card.dart';
import 'Components/carrosel.dart';
import 'Components/destaques.dart';
import 'Components/tips.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Carrosel(),
              SizedBox(
                height: 15,
              ),
              Destaques(title: 'Receita em Destaque',),
              SizedBox(
                height: 10,
              ),
             Receitas_Destaque(),
              SizedBox(
                height: 15,
              ),
              Destaques(
                title: 'Receitas salgadas',
              ),
              Receitas_Salgadas(),
               Destaques(
                title: 'Receitas doces',
              ),
              Receitas_Doce(),
            ],
          ),
        );
      }
    );
  }



}
