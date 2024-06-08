// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //dil
  String language = 'en';

  //tema
  bool darkMode = false;

  changeThemeMode(bool isDark) async {
    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setBool("darkMode", isDark);
    setState(() {
      darkMode = isDark;
    });
  }

  changeLanguage(String lang) async {
    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setString("language", lang);
    setState(() {
      language = lang;
    });
  }

  loadSettings()async{
    SharedPreferences memory = await SharedPreferences.getInstance();

    var d = memory.getBool('darkMode');
    var l = memory.getString('language');

    if (d == null){
      changeThemeMode(false);
    }
    else {
      darkMode = d;
    }

    if (l == null){
      changeLanguage('en');
    }
    else {
      language = l;
    }

    setState(() {
      
    });
  }

  @override
  void initState() {
    loadSettings();
    super.initState();
  }

  //dilin actionsheeti
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Language Selection'),
        message: const Text('Choose the language you want'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// default behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              changeLanguage("en");
              Navigator.pop(context);
            },
            child: const Text('Engilsh'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              changeLanguage("tr");
              Navigator.pop(context);
            },
            child: const Text('Türkçe'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () => context.go('/home'),
              child: Icon(Icons.home_outlined)),
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
            InkWell(
                onTap: () => _showActionSheet(context),
                child: Text("Language: $language")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark Mode:"),
                  Switch(
                      value: darkMode,
                      onChanged: (value) {
                        setState(() {
                          changeThemeMode(value);
                        });
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}