import 'package:flutter/material.dart';
import 'package:boilerplate/ui/constants.dart';

class AlreadyHaveAnAccontCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccontCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            login ? "Don't have an Account ? " : "Already have an Account ? "
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "REGISTER" : "LOGIN",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
