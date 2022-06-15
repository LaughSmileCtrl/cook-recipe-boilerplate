import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgScr;
  const ItemImage({
    Key? key,
    required this.imgScr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      "assets/icons/burger.png",
      height: size.height * 0.45,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}