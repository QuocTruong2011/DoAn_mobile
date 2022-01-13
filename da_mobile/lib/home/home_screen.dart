import 'package:da_mobile/home/components/body.dart';
import 'package:da_mobile/home/components/categories.dart';
import 'package:da_mobile/home/components/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Body(),
      ),
    );
  }
}
