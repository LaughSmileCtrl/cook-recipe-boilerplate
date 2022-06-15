import 'package:boilerplate/ui/screens/signup/signup_screen.dart';
import 'package:boilerplate/ui/screens/home/home-screen.dart';
import 'package:boilerplate/ui/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/screens/login/components/background.dart';
import 'package:boilerplate/ui/components/rounded_input_field.dart';
import 'package:boilerplate/ui/components/rounded_password_field.dart';
import 'package:boilerplate/ui/components/already_have_an_account_check.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.0),
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontFamily: 'Rawon',
                color: Color(0xFF93ca60),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
            AlreadyHaveAnAccontCheck(
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
