import 'package:flutter/material.dart';

class Destaques extends StatelessWidget {
  const Destaques({ 
  required this.title
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
        Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green,
                onPressed: () {},
                child: Text(
                  "Mais",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
