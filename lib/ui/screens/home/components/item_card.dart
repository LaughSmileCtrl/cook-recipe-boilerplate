import 'package:boilerplate/ui/constants.dart';
import 'package:boilerplate/ui/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, image;
  final Function press;

  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this size provide you the total height and width of the screen
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            press();
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: imageSrc(image, size),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Image imageSrc(String src, Size size) {
    return (src.contains('http'))
        ? Image.network(
      image,
      width: size.width * 0.18,
      // size * 0.18 means it use 18% of total width
    )
        : Image.asset(
      image,
      width: size.width * 0.18,
      // size * 0.18 means it use 18% of total width
    );
  }
}