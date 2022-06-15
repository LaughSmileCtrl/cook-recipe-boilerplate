import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';

class MedsosIcon extends StatelessWidget {
  final String iconScr;
  final Function press;

  const MedsosIcon({
    Key? key,
    required this.iconScr,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color(0xFF93ca60),
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconScr,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
