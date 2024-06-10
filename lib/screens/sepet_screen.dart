// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SepetScreen extends StatefulWidget {
  const SepetScreen({super.key});

  @override
  State<SepetScreen> createState() => _SepetScreenState();
}

class _SepetScreenState extends State<SepetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => context.go('/home'), child: Icon(Icons.home_outlined)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () => context.go('/sepet'),
                child: Icon(Icons.shopping_basket_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () => context.go('/login'),
              child: Icon(Icons.person_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () => context.go('/settings'),
              child: Icon(Icons.tune_outlined),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          basket(),
          basket(),
          basket(),
          basket(),
        ],
      ),
    );
  }
}

class basket extends StatelessWidget {
  const basket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/beauty.jpg"), fit: BoxFit.cover),
        color: Colors.amber,
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
