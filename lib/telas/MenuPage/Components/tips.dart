import 'package:flutter/material.dart';

import 'card.dart';

SingleChildScrollView Receitas_Destaque() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardItem(
                image:'assets/image/coxa.png', 
                press: () {}, 
                title: 'Coxa de frango\ncom ervas',
              ),
              CardItem(
                image:'assets/image/ceviche.png', 
                press: () {}, 
                title: 'Ceviche de Salmão',
              ),
              CardItem(
                image:'assets/image/confit.png', 
                press: () {}, 
                title: 'Bruschetta de\n Tomate Confit ',
              ),
              CardItem(
                image:'assets/image/tiramisu.png', 
                press: () {}, 
                title: 'Tiramisù',
              ),
            ],
          ),
        );
  }
  SingleChildScrollView Receitas_Salgadas() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardItem(
                image:'assets/image/coxa.png', 
                press: () {}, 
                title: 'Coxa de frango\ncom ervas',
              ),
              CardItem(
                image:'assets/image/ceviche.png', 
                press: () {}, 
                title: 'Ceviche de Salmão',
              ),
              CardItem(
                image:'assets/image/confit.png', 
                press: () {}, 
                title: 'Bruschetta de\n Tomate Confit ',
              ),
            ],
          ),
        );
  }
SingleChildScrollView Receitas_Doce() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardItem(
                image:'assets/image/tiramisu.png', 
                press: () {}, 
                title: 'Tiramisù',
              ),
            ],
          ),
        );
  }

