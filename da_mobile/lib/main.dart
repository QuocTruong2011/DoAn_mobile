import 'package:da_mobile/details/detail_screen.dart';
import 'package:da_mobile/home/home_screen.dart';
import 'package:da_mobile/screens/Acc_Information.dart';
import 'package:da_mobile/screens/Welcome/welcome_screen.dart';
import 'package:da_mobile/screens/account_screen.dart';
import 'package:da_mobile/screens/login/components/background.dart';
import 'package:da_mobile/screens/login/login_screen.dart';
import 'package:da_mobile/screens/password_screen.dart';

import 'package:da_mobile/screens/sigup/signup_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black12),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:WelcomeScreen(),
      //passwordScreen DetailsScreen
      //accountScreen
      //home:accountInformationScreen(),
    );
  }
}
