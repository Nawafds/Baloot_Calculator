import 'package:flutter/material.dart';

class TeamTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          'لهم',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 35,
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'لنا',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 35,
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
