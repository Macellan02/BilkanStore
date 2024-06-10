// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/beauty.jpg"), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0),
            ])),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "PANTUL",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
      ),
    );
  }
}
