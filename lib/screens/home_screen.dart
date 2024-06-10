// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_outlined),
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
      body: Expanded(
        flex: 3,
        child: Column(
          children: [
            //üst taraf
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 400,
                    width: 550,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/bags.jpg"))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            //alt taraf
            Expanded(
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                  SizedBox(
                    width: 40,
                  ),
                  Category(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
