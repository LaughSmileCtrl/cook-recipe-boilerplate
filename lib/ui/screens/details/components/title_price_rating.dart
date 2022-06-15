import 'package:boilerplate/ui/constants.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReview;
  final double rating;
  final String name;
  // final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key? key,
    required this.price,
    required this.numOfReview,
    required this.rating,
    required this.name,
    // required this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget> [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget> [
                    // SmoothStarRating(
                    //   borderColor: kPrimaryColorHome,
                    //   rating: rating,
                    // ),
                    SizedBox(width: 10),
                    Text("$numOfReview reviews"),
                  ],
                ),
              ],
            ),
          ),
          priceTag(context, price: 15),
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {required int price}) {
    return ClipPath(
          clipper:PricerCliper(),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 65,
            width: 65,
            color: kPrimaryColor,
            child: Text(
              "\$price",
              style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}

class PricerCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}