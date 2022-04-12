import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class FullWidthContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const FullWidthContainer(
      {required this.imagePath,
      required this.countryName,
      this.packageDetails,
      required this.height,
      required this.value,
      required this.rent,
      required this.favIconPath});
  final String imagePath;
  final String countryName;
  final String? packageDetails;
  final String favIconPath;
  final double height;
  final bool value;
  final String rent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: KColor.transparent,
        borderRadius: BorderRadius.circular(KSize.getHeight(context, 30)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(KSize.getHeight(context, 30)),
              gradient: LinearGradient(
                colors: [
                  KColor.white,
                  KColor.transparent,
                  KColor.transparent,
                  KColor.black
                ],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: const [0, 0, 0.4, 1],
              ),
            ),
          )),
          Positioned(
            right: KSize.getWidth(context, 20),
            top: KSize.getHeight(context, 20),
            child: Container(
              height: KSize.getHeight(context, 30),
              width: KSize.getWidth(context, 30),
              decoration: BoxDecoration(
                  color: KColor.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(favIconPath))),
            ),
          ),
          Positioned(
            bottom: KSize.getHeight(context, 20),
            left: KSize.getWidth(context, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    value == true
                        ? SmoothStarRating(
                            size: KSize.getHeight(context, 14),
                            spacing: KSize.getWidth(context, 3),
                            borderColor: KColor.starColor,
                            color: KColor.starColor,
                            rating: 5,
                            allowHalfRating: false,
                          )
                        : Container(),
                    SizedBox(
                      width: KSize.getWidth(context, 10),
                    ),
                    value == true
                        ? Text(
                            '4.5',
                            style: KTextStyle.subtitle3
                                .copyWith(color: KColor.white),
                          )
                        : const Text('')
                  ],
                ),
                SizedBox(
                  height: KSize.getHeight(context, 10),
                ),
                Text(
                  countryName,
                  style: KTextStyle.headline5.copyWith(
                      color: KColor.white,
                      fontSize: packageDetails == null ? 20 : 30),
                ),
                value == false
                    ? Text(
                        rent,
                        style: KTextStyle.bodyText4.copyWith(
                            color: KColor.white,
                            ),
                      )
                    : const Text(''),
                SizedBox(
                  height: KSize.getHeight(context, 10),
                ),
                packageDetails == null
                    ? Text(
                        '2 days 3 night full package',
                        style: KTextStyle.bodyText3
                            .copyWith(color: KColor.textColorLightGray),
                      )
                    : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
