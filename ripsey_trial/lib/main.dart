import 'package:flutter/material.dart';
import 'package:ripsey_trial/login.dart';
import 'package:ripsey_trial/tabs/buy_tab.dart';
import 'package:ripsey_trial/tabs/home_tab.dart';
import 'package:ripsey_trial/tabs/labs_tab.dart';
import 'package:ripsey_trial/tabs/profile_tab.dart';
import 'package:ripsey_trial/tabs/week_tab.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: new MyApp(),
    initialRoute: '/',
    routes: {
      '/' : (context) => login(),
      '/home' : (context) => homeTab(),
      '/week' : (context) => weekTab(),
      '/buy' : (context) => buyTab(),
      '/lab' : (context) => labsTab(),
      '/profile' : (context) => profileTab(),
    },
  ));
}


