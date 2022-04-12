import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ReviewCard extends StatefulWidget {
  final String name;
  final String date;
  final String comment;
  final String profilepic;
  const ReviewCard(
      {Key? key,
      required this.name,
      required this.date,
      required this.profilepic,
      required this.comment})
      : super(key: key);

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 44,
                      width: 45,
                      decoration: BoxDecoration(
                          color: KColor.textColorLightGray,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(widget.profilepic)))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: KTextStyle.bodyText2,
                      ),
                      Text(
                        widget.date,
                        style: KTextStyle.bodyText4,
                      )
                    ],
                  ),
                ],
              ),
              SmoothStarRating(
                color: KColor.yellow800,
                rating: 5.0,
                size: 15,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.comment,
            style: KTextStyle.bodyText4.copyWith(color: KColor.textColorGray),
          ),
          Divider(
            color: KColor.grey350,
            endIndent: 2,
            indent: 2,
            height: 40,
            thickness: 0.9,
          )
        ],
      ),
    );
  }
}
