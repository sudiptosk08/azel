import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/details_card.dart';
import 'package:azel/views/screens/hotels/hotels_details_screen.dart';
import 'package:azel/views/screens/packages/packag_details_screen.dart';
import 'package:azel/views/screens/place/place_details_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class ShowAllScreen extends StatefulWidget {
  final String title;
  const ShowAllScreen({Key? key, required this.title}) : super(key: key);

  @override
  _ShowAllScreenState createState() => _ShowAllScreenState();
}

class _ShowAllScreenState extends State<ShowAllScreen> {
  late Offset offset;
  List<Map<String, String>> popularCard = [
    {
      'imagePath': AssetPath.italyManorolaRect,
      'countryName': 'Italy, Manarola',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.germanyBerlinRect,
      'countryName': 'Germany, Berlin',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.veniceBeachRect,
      'countryName': 'Venice, Beach',
      'favIcon': AssetPath.favIconWhite
    },
  ];
  List<Map<String, String>> hotel = [
    {
      'imagePath': AssetPath.hotel1,
      'countryName': 'Water Hotel',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.hotel2,
      'countryName': 'Beach Hotel',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.hotel3,
      'countryName': 'Ayo Narga',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: KSize.getHeight(context, 120),
              width: MediaQuery.of(context).size.width,
              color: KColor.transparent,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: KSize.getHeight(context, 50),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Transform.translate(
                                offset: const Offset(-10, 0),
                                child: Image.asset(
                                  MyApp.themeNotifier.value == ThemeMode.dark
                                      ? AssetPath.backImageDark
                                      : AssetPath.backImage,
                                  width: KSize.getWidth(context, 44),
                                  height: KSize.getHeight(context, 44),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Container(
                              height: KSize.getHeight(context, 44),
                              width: KSize.getWidth(context, 44),
                              decoration: const BoxDecoration(
                                color: KColor.profilePicBG,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(AssetPath.homeProfilePic),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: KSize.getWidth(context, 20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: KTextStyle.buttonText3.copyWith(
                          fontSize: 22,
                          color: MyApp.themeNotifier.value == ThemeMode.light
                              ? KColor.textColorBlack
                              : KColor.textColorWhite),
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Result found (128)',
                          style: KTextStyle.bodyText3.copyWith(
                              color:
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.textColorGray
                                      : KColor.textColorGrayDark),
                        ),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            offset = details.globalPosition.translate(20, 20);
                          },
                          onTap: () {

                            showMenu(
                                color: KColor.transparent,
                                useRootNavigator: true,
                                elevation: 0,
                                // color: Colors.transparent,
                                context: context,
                                items: <PopupMenuEntry<int>>[PlusMinusEntry()],
                                position: RelativeRect.fromRect(
                                  offset & const Size(40, 40),
                                  Offset.zero &
                                      Size(KSize.getHeight(context, 35),
                                          KSize.getHeight(context, 35)),
                                ));
                          },
                          child: Row(
                            children: [
                              Text(
                                'Sort By',
                                style: KTextStyle.bodyText3.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.light
                                        ? KColor.textColorBlack
                                        : KColor.textColorWhite),
                              ),
                              SizedBox(
                                width: KSize.getWidth(context, 3),
                              ),
                              Image.asset(AssetPath.sortByIcon,
                                  width: KSize.getWidth(context, 12.5),
                                  height: KSize.getHeight(context, 10.5),
                                  fit: BoxFit.contain,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.light
                                      ? KColor.textColorBlack
                                      : KColor.textColorWhite)
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: KSize.getHeight(context, 30),
                      ),
                      child: Column(
                        children: [
                          ...List.generate(popularCard.length, (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: KSize.getHeight(context, 30)),
                              child: GestureDetector(
                                onTap: () {
                                  if (widget.title == "Popular Place") {
                                    Navigator.push(
                                        context,
                                        FadeRoute(
                                            page: const PlaceDetailsScreen()));
                                  } else if (widget.title ==
                                      "Recomended for you") {
                                    Navigator.push(
                                        context,
                                        FadeRoute(
                                            page: const PlaceDetailsScreen()));
                                  } else if (widget.title ==
                                      "Popular Packages") {
                                    Navigator.push(
                                        context,
                                        FadeRoute(
                                            page:
                                                const PackageDetailsScreen()));
                                  } else if (widget.title == "Choose Hotels") {
                                    Navigator.push(
                                        context,
                                        FadeRoute(
                                            page: const HotelDetailsScreen(hotelname: "Water Hotel",)));
                                  } else if (widget.title == "Choose Hotels") {
                                    Navigator.push(
                                        context,
                                        FadeRoute(
                                            page: const HotelDetailsScreen(hotelname: "Water Hotel",)));
                                  }
                                },
                                child: widget.title == "Choose Hotels"
                                    ? FullWidthContainer(
                                        value: false,
                                        rent: hotel[index]['rent'].toString(),
                                        height: KSize.getHeight(context, 165.0),
                                        imagePath: hotel[index]['imagePath']
                                            .toString(),
                                        countryName: hotel[index]['countryName']
                                            .toString(),
                                        packageDetails: '',
                                        favIconPath:
                                            hotel[index]['favIcon'].toString(),
                                      )
                                    : FullWidthContainer(
                                        value: true,
                                        rent: '',
                                        height: KSize.getHeight(context, 230.0),
                                        imagePath: popularCard[index]
                                                ['imagePath']
                                            .toString(),
                                        countryName: popularCard[index]
                                                ['countryName']
                                            .toString(),
                                        packageDetails: '',
                                        favIconPath: popularCard[index]
                                                ['favIcon']
                                            .toString(),
                                      ),
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PlusMinusEntry extends PopupMenuEntry<int> {
  PlusMinusEntry({Key? key}) : super(key: key);

  @override
  PlusMinusEntryState createState() => PlusMinusEntryState();

  @override
  bool represents(int? value) {
    throw UnimplementedError();
  }

  @override
  double height = 99;
}

class PlusMinusEntryState extends State<PlusMinusEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: KSize.getHeight(context, 109),
      width: KSize.getWidth(context, 128),
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(MyApp.themeNotifier.value == ThemeMode.dark
              ? AssetPath.popupImageDark
              : AssetPath.popupImage),
        ),
        boxShadow: [
          BoxShadow(
              color: KColor.black.withOpacity(0.05),
              offset: const Offset(0, 20),
              spreadRadius: 1,
              blurRadius: 15)
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(KSize.getWidth(context, 14)),
            bottomRight: Radius.circular(KSize.getWidth(context, 14))),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: KSize.getHeight(context, 14),
                    width: KSize.getWidth(context, 14),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: KColor.red, width: 2),
                    ),
                  ),
                  SizedBox(
                    width: KSize.getWidth(context, 5),
                  ),
                  Text(
                    'Low Price',
                    style: KTextStyle.buttonText4.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: KSize.getHeight(context, 10),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: KSize.getHeight(context, 14),
                    width: KSize.getWidth(context, 14),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray),
                    ),
                  ),
                  SizedBox(
                    width: KSize.getWidth(context, 5),
                  ),
                  Text(
                    'High Price',
                    style: KTextStyle.buttonText4.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: KSize.getHeight(context, 10),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: KSize.getHeight(context, 14),
                    width: KSize.getWidth(context, 14),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray),
                    ),
                  ),
                  SizedBox(
                    width: KSize.getWidth(context, 5),
                  ),
                  Text(
                    'Trending Now',
                    style: KTextStyle.buttonText4.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //  ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
