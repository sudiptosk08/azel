import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/mytrip/page/flight_details_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyTripFlightScreen extends StatefulWidget {
  const MyTripFlightScreen({Key? key}) : super(key: key);

  @override
  _MyTripFlightScreenState createState() => _MyTripFlightScreenState();
}

class _MyTripFlightScreenState extends State<MyTripFlightScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: KSize.getWidth(context, 20), vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: KSize.getHeight(context, 10),
            ),
            ...List.generate(3, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, ScaleRoute(page:const FlightDetailsScreen()));
                },
                child: Column(
                  children: [
                    Container(
                      height: KSize.getHeight(context, 134),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorBlack
                            : KColor.white,
                        border: Border.all(
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textFieldUnderlineColorDark
                                : KColor.textColorGray,
                            width: 0.5),
                        borderRadius:
                            BorderRadius.circular(KSize.getWidth(context, 24)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: KSize.getHeight(context, 10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                index == 0 ? '100% on time' : '90% on time',
                                style: KTextStyle.bodyText4.copyWith(
                                    fontSize: 11, color: KColor.primary),
                              ),
                            ),
                            SizedBox(
                              height: KSize.getHeight(context, 10),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: KSize.getWidth(context, 20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? '7:30 AM' : '7:50 AM',
                                        style: KTextStyle.bodyText3.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.textColorWhite
                                              : KColor.textColorBlack,
                                        ),
                                      ),
                                      Text(
                                        'Larkrow',
                                        style: KTextStyle.bodyText4.copyWith(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.textColorGrayDark
                                              : KColor.textColorGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: KSize.getHeight(context, 15),
                                          width: KSize.getWidth(context, 13),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  AssetPath.smallPlane),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '2h 40m',
                                        style: KTextStyle.bodyText4.copyWith(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.textColorGrayDark
                                              : KColor.textColorGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? '9:30 PM' : '9:50 PM',
                                        style: KTextStyle.bodyText3.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.textColorWhite
                                              : KColor.textColorBlack,
                                        ),
                                      ),
                                      Text(
                                        'Goa',
                                        style: KTextStyle.bodyText4.copyWith(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.textColorGrayDark
                                              : KColor.textColorGray,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: KSize.getHeight(context, 10),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: KSize.getWidth(context, 10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: KSize.getHeight(context, 30),
                                    width: KSize.getWidth(context, 30),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "\$150",
                                            style: KTextStyle.bodyText2
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor.textColorWhite
                                                        : KColor
                                                            .textColorBlack)),
                                        TextSpan(
                                            text: '/person',
                                            style: KTextStyle.bodyText4
                                                .copyWith(
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor
                                                            .textColorGrayDark
                                                        : KColor.textColorGray))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: KSize.getHeight(context, 30),
                                    width: KSize.getWidth(context, 30),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor
                                                  .textFieldUnderlineColorDark
                                              : KColor.textColorGray,
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                MyApp.themeNotifier.value ==
                                                        ThemeMode.dark
                                                    ? AssetPath.favIconWhiteDark
                                                    : AssetPath.favIconWhite))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 25),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
