import 'package:flutter/material.dart';
import 'package:boilerplate/ui/components/button_nav_bar.dart';
import 'package:boilerplate/ui/screens/home/components/app_bar.dart';
import 'package:boilerplate/ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: ButtonNavBar(),
      body: Body(),
    );
  }
}





