import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconScr, title;
  final Function press;

  const ProfileMenuItem({
    Key? key,
    required this.iconScr,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: <Widget>[
              Image.asset(
                iconScr,
                height: 25,
                width: 25,
                color: kPrimaryColorHome,
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: kTextLighColor,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: kTextLighColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
