import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../main.dart';

class IdeaForTripDetailsScreen extends StatefulWidget {
  const IdeaForTripDetailsScreen({Key? key}) : super(key: key);

  @override
  _IdeaForTripDetailsScreenState createState() =>
      _IdeaForTripDetailsScreenState();
}

class _IdeaForTripDetailsScreenState extends State<IdeaForTripDetailsScreen> {
  TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    commentController.text = 'Leave Your Comment';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      extendBody: true,
      bottomNavigationBar: Container(
        height: KSize.getHeight(context, 100),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: KColor.transparent, boxShadow: [
          BoxShadow(
              color:  MyApp.themeNotifier.value == ThemeMode.dark
          ?KColor.appBackgroundDark.withOpacity(0.5): KColor.white.withOpacity(0.5),
              spreadRadius: 4,
              offset: const Offset(1, 1),
              blurRadius: 10)
        ]),
        padding: EdgeInsets.symmetric(
          vertical: KSize.getWidth(context, 20),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: KSize.getWidth(context, 20)),
          child: Container(
            height: KSize.getHeight(context, 50),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.containerColorTPDark
                    : KColor.white,
                border: Border.all(
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textFieldUnderlineColorDark
                        : KColor.textColorLightGray)),
            child: Padding(
              padding: EdgeInsets.only(left: KSize.getWidth(context, 10)),
              child: Center(
                child: TextField(
                  controller: commentController,
                  style: KTextStyle.bodyText4.copyWith(color: MyApp.themeNotifier.value == ThemeMode.dark
          ?KColor.white: KColor.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          top: KSize.getHeight(context, 5),
                          bottom: KSize.getHeight(context, 5),
                          right: KSize.getWidth(context, 10)),
                      child: Container(
                        height: KSize.getHeight(context, 30),
                        width: KSize.getWidth(context, 30),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                 AssetPath.sentTextField),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: KSize.getHeight(context, 362),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetPath.beach),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: KSize.getWidth(context, 20),
                right: KSize.getWidth(context, 20),
                top: KSize.getHeight(context, 50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: KSize.getHeight(context, 44),
                      width: KSize.getWidth(context, 44),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                              MyApp.themeNotifier.value == ThemeMode.light
                                  ? AssetPath.backImage
                                  : AssetPath.backImageDark),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: KSize.getHeight(context, 44),
                    width: KSize.getWidth(context, 44),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? AssetPath.favIconRed
                                : AssetPath.favIconRedBlack),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, KSize.getHeight(context, -40)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.appBackgroundDark
                    : KColor.appBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(KSize.getHeight(context, 50)),
                  topRight: Radius.circular(
                    KSize.getHeight(context, 50),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: KSize.getHeight(
                      context,
                      30,
                    ),
                    left: KSize.getWidth(context, 20),
                    right: KSize.getWidth(context, 20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: KSize.getHeight(context, 30),
                                  width: KSize.getWidth(context, 30),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(AssetPath.user3),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: KSize.getWidth(context, 10),
                                ),
                                Text(
                                  'Adom Shafi',
                                  style: KTextStyle.bodyText3.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: KSize.getHeight(context, 10),
                            ),
                            Row(
                              children: [
                                SmoothStarRating(
                                  size: KSize.getHeight(context, 14),
                                  spacing: KSize.getWidth(context, 1),
                                  borderColor: KColor.starColor,
                                  color: KColor.starColor,
                                  rating: 5,
                                  allowHalfRating: false,
                                ),
                                SizedBox(
                                  width: KSize.getWidth(context, 10),
                                ),
                                Text(
                                  '4.5',
                                  style: KTextStyle.bodyText3.copyWith(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: KSize.getHeight(context, 10)),
                          child: Container(
                            height: KSize.getHeight(context, 50),
                            width: KSize.getWidth(context, 50),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? AssetPath.playDark
                                        : AssetPath.play),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.44,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: KSize.getHeight(context, 15)),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'What I Expolre in GOA?',
                                    style: KTextStyle.headline2.copyWith(
                                        color: MyApp.themeNotifier.value ==
                                                ThemeMode.dark
                                            ? KColor.textColorWhite
                                            : KColor.textColorBlack,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: KSize.getHeight(context, 10),
                                  ),
                                  Text(
                                    "Life on land offers plenty of tantalizing options for adventure travelers, but there’s a whole other world of excitement waiting under the sea. You don't have to be a daredevil to take on these deep-sea adventures, but a visit to any one of these amazing spots will require some guts. While some of these destinations are perfect for snorkelers, others will require a bit more know-how in the ",
                                    style: KTextStyle.bodyText4.copyWith(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorGrayDark
                                          : KColor.textColorGray,
                                    ),
                                  ),
                                  SizedBox(
                                    height: KSize.getHeight(context, 15),
                                  ),
                                  Text(
                                    "Life on land offers plenty of tantalizing options for adventure travelers, but there’s a whole other world of excitement waiting under the sea.  ",
                                    style: KTextStyle.bodyText4.copyWith(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorGrayDark
                                          : KColor.textColorGray,
                                    ),
                                  ),
                                  SizedBox(
                                    height: KSize.getHeight(context, 15),
                                  ),
                                  Text(
                                    "Life on land offers plenty of tantalizing options for adventure travelers, but there’s a whole other world of excitement waiting under the sea.  ",
                                    style: KTextStyle.bodyText4.copyWith(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorGrayDark
                                          : KColor.textColorGray,
                                    ),
                                  ),
                                  SizedBox(
                                    height: KSize.getHeight(context, 60),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.bottomCenter,
                          //   child: Container(
                          //     height: KSize.getHeight(context, 50),
                          //     width: MediaQuery.of(context).size.width,
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(10),
                          //         border:
                          //             Border.all(color: KColor.textColorGray)),
                          //     child: TextField(
                          //       decoration: InputDecoration(
                          //         border: InputBorder.none,
                          //         suffixIcon: Padding(
                          //           padding: const EdgeInsets.all(5.0),
                          //           child: Container(
                          //             height: KSize.getHeight(context, 30),
                          //             width: KSize.getWidth(context, 30),
                          //             decoration: BoxDecoration(
                          //               shape: BoxShape.circle,
                          //               image: DecorationImage(
                          //                 fit: BoxFit.contain,
                          //                 image: AssetImage(
                          //                     MyApp.themeNotifier.value ==
                          //                             ThemeMode.dark
                          //                         ? AssetPath.playDark
                          //                         : AssetPath.sentTextField),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
