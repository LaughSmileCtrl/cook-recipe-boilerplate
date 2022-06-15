import 'package:boilerplate/ui/constants.dart';
import 'package:boilerplate/ui/screens/details/components/app_bar.dart';
import 'package:boilerplate/ui/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorHome,
      // appBar: detailsAppBar(),
      body: Body(),
    );
  }
}











