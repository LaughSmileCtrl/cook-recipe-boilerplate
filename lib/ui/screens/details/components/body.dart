import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/screens/details/components/item_image.dart';
import 'package:boilerplate/ui/screens/details/components/title_price_rating.dart';
import 'package:boilerplate/ui/screens/details/components/order_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget> [
        ItemImage(
            imgScr: "assets/icons/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          // shopeName(name: "MacDonalds"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReview: 24,
            rating: 4,
            price: 15,
            // onRatingChanged: (value) {  },
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // OrderButton(
          //   size: size,
          //   press: () {},
          // ),
        ],
      ),
    );
  }

  // Row shopeName({required String name}) {
  //   return Row(
  //     children: <Widget> [
  //       Icon(
  //         Icons.location_on,
  //         color: ksecondaryColor,
  //       ),
  //       SizedBox(width: 10),
  //       Text(name),
  //     ],
  //   );
  // }
}