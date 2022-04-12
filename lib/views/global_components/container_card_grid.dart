import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ContainerCardGrid extends StatefulWidget {
   const ContainerCardGrid({
    Key? key,
    required this.imagePath,
    required this.countryName,
    required this.cityName,
    required this.favIconString,
    required this.subtitletxtstyle,
    required this.value,
  }):super(key: key);

  final String imagePath;
  final String countryName;
  final String cityName;
  final String favIconString;
  final TextStyle subtitletxtstyle;
  final bool value;

  @override
  _ContainerCardGridState createState() => _ContainerCardGridState();
}

class _ContainerCardGridState extends State<ContainerCardGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: KSize.getWidth(context, 180),
      height: KSize.getHeight(context, 250),
      decoration: BoxDecoration(
        color: KColor.transparent,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.imagePath),
        ),
        gradient: LinearGradient(colors: [
          KColor.black.withOpacity(0.4),
          KColor.white.withOpacity(0.8),
        ], end: Alignment.topCenter, begin: Alignment.bottomCenter),
      ),
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(KSize.getHeight(context, 30)),
              gradient: LinearGradient(
                colors: [
                  KColor.black,
                  KColor.transparent,
                  KColor.transparent,
                  KColor.black
                ],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: const [0, 0, 0.6, 1],
              ),
            ),
          )),
          Positioned(
            right: 15,
            top: 15,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: KColor.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(widget.favIconString))),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    widget.value == true ?
                    SmoothStarRating(
                      size: KSize.getHeight(context, 14),
                      spacing: KSize.getWidth(context, 3),
                      borderColor: KColor.starColor,
                      color: KColor.starColor,
                      rating: 5,
                      allowHalfRating: false,
                    ):Container(),
                    SizedBox(
                      width: KSize.getWidth(context, 10),
                    ),
                      widget.value == true ?Text(
                      '4.5',
                      style: KTextStyle.subtitle3.copyWith(color: KColor.white),
                    ): const Text(''),
                  ],
                ),
                SizedBox(
                  height: KSize.getHeight(context, 5),
                ),
                Text(
                  widget.countryName,
                  style: KTextStyle.headline5.copyWith(color: KColor.white),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 5),
                ),
                Text(
                  widget.cityName,
                  style: widget.subtitletxtstyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
