// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:bilkan_store/localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => context.go('/home'), child: Icon(Icons.home_outlined)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_basket_outlined),
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
      body: Column(
        children: [
          //top image
          Container(
            height: 300,
            width: 550,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //alt taraf
          //email
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: [
                Text("Email: "),
                Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                      hintText: "ornek@abc.com",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    /* onChanged: (value){
                          setState(() {
                            email = value;
                          });}, */
                  ),
                )),
              ],
            ),
          ),
          //ad
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: [
                Text("Ad: "),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                      hintText: "Yasin",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          //soyad
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: [
                Text("Soyad: "),
                Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                      hintText: "Bilgin",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          //şifre
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: [
                Text("Şifre: "),
                SizedBox(width: 10),
                Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    //şifre için nokta nokta yapar
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                      hintText: "ornek123Abc?!",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          SizedBox(height: 30),
          //kayıt ol cnm
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              width: 480,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context).getTranslate("kayıt_ol3"),
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          //or
          Text(
            AppLocalizations.of(context).getTranslate("kayıt_ol2"),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
          SizedBox(height: 15),
          //google, facebook, twitter
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "google",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(219, 68, 55, 10),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(51, 89, 165, 0.984),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "X",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          //zaten hesabın var mı?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).getTranslate("var"),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              InkWell(
                onTap: () {
                  context.go('/login');
                  print("tıklandı");
                },
                child: Text(
                  AppLocalizations.of(context).getTranslate("gir"),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
