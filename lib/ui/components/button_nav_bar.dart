import 'package:boilerplate/ui/screens/home/home-screen.dart';
import 'package:boilerplate/ui/screens/profile/profile_screen.dart';
import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      //  double.infinity means is cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/icons/heart.png",
              height: 25,
              width: 25,
              color: kPrimaryColorHome,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/home.png",
              height: 25,
              width: 25,
              color: kPrimaryColorHome,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/userLine.png",
              height: 25,
              width: 25,
              color: kPrimaryColorHome,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfileScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
