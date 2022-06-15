import 'package:boilerplate/ui/screens/signup/signup_screen.dart';
import 'package:boilerplate/ui/screens/login/login_screen.dart';
import 'package:boilerplate/ui/screens/welcome/components/background.dart';
import 'package:boilerplate/ui/components/rounded_button.dart';
import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Cook Recipe",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF93ca60),
                fontSize: 40,
                fontFamily: 'Rawon',
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTER",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
