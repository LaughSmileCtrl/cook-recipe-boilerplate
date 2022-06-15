import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Image.asset(
        "assets/icons/hamburger.png",
        height: 25,
        width: 25,
        color: kPrimaryColorHome,
      ),
      iconSize: 0.1,
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Recipe",
            style: TextStyle(
              color: Color(0xFF93ca60),
              fontFamily: 'Rawon',
              fontSize: 25,
            ),
          ),
          TextSpan(
            text: "Cook",
            style: TextStyle(
              color: kPrimaryColorHome,
              fontFamily: 'Rawon',
              fontSize: 25,
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset(
          "assets/icons/bell.png",
          height: 25,
          width: 25,
          color: kPrimaryColorHome,
        ),
        onPressed: () {},
      ),
    ],
  );
}
