import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_receitas/constants.dart';
import 'package:flutter_receitas/telas/LikePage/Like.dart';
import 'package:flutter_receitas/telas/MenuPage/Menu.dart';
import 'package:flutter_receitas/telas/SearchPage/Search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedindex = 1;
  static final List<Widget> _Navscreens = <Widget>[Search(), Menu(), Like()];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Center(
        child: _Navscreens.elementAt(_selectedindex),
      ),
      bottomNavigationBar: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10),
          child: GNav(
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade400,
            gap: 8,
            padding: EdgeInsets.all(12),
            tabs: const [
              GButton(
                icon: Icons.search,
                text: 'Buscar',
              ),
              GButton(
                icon: Icons.home,
                text: 'Menu',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favoritos',
              ),
            ],
            selectedIndex: _selectedindex,
            onTabChange: (index) {
              setState(() {
                _selectedindex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Column(children: [
        Text(
          'Receitas',
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
          ),
        )
      ]),
    );
  }
}
