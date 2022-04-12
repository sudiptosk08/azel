import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/flights/flights_confirmation_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class SelectSeatScreen extends StatefulWidget {
  const SelectSeatScreen({Key? key}) : super(key: key);

  @override
  _SelectSeatScreenState createState() => _SelectSeatScreenState();
}

class _SelectSeatScreenState extends State<SelectSeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      extendBody: true,
      bottomNavigationBar: Container(
        height: KSize.getHeight(context, 162),
        width: MediaQuery.of(context).size.width,
        color: KColor.transparent,
        padding: EdgeInsets.only(
            left: KSize.getWidth(context, 20),
            right: KSize.getWidth(context, 20),
            bottom: KSize.getHeight(context, 32)),
        child: Container(
          height: KSize.getHeight(context, 132),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: MyApp.themeNotifier.value == ThemeMode.dark
                  ? KColor.containerColorTPDark
                  : KColor.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                MyApp.themeNotifier.value == ThemeMode.light
                    ? BoxShadow(
                        color: KColor.black.withOpacity(0.05),
                        spreadRadius: 0,
                        offset: const Offset(2, 5),
                        blurRadius: 15)
                    : const BoxShadow()
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: KSize.getWidth(context, 20),
                vertical: KSize.getHeight(context, 15)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seat Number : 04',
                      style: KTextStyle.buttonText2.copyWith(
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorWhite
                              : KColor.textColorBlack),
                    ),
                    Text('Ticket : \$120',
                        style: KTextStyle.buttonText2.copyWith(
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorWhite
                                : KColor.textColorBlack))
                  ],
                ),
                SizedBox(
                  height: KSize.getHeight(context, 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Sylhet',
                      style: KTextStyle.bodyText4.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray),
                    ),
                    Container(
                      height: KSize.getHeight(context, 21),
                      width: KSize.getWidth(context, 18),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(AssetPath.planeFlight),
                        ),
                      ),
                    ),
                    Text(
                      'Havana',
                      style: KTextStyle.bodyText4.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray),
                    ),
                  ],
                ),
                SizedBox(
                  height: KSize.getHeight(context, 20),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          FadeRoute(page: const FlightsConfirmationScreen()));
                    },
                    child: Text(
                      'Continue',
                      style:
                          KTextStyle.bodyText3.copyWith(color: KColor.primary),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: KSize.getWidth(context, 20),
            top: KSize.getHeight(context, 50),
            right: KSize.getWidth(context, 20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Transform.translate(
                      offset: Offset(KSize.getWidth(context, -5), 0),
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
                  ),
                  Text(
                    'Select Seat',
                    style: KTextStyle.subtitle2.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 44),
                    width: KSize.getWidth(context, 44),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 35),
              ),
              SizedBox(
                height: KSize.getHeight(context, 70),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Larkrow',
                          style: KTextStyle.headline3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorWhite
                                  : KColor.textColorBlack),
                        ),
                        SizedBox(
                          height: KSize.getHeight(context, 5),
                        ),
                        Text(
                          'UK',
                          style: KTextStyle.bodyText3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorGrayDark
                                  : KColor.textColorGray),
                        ),
                      ],
                    ),
                    Container(
                      height: KSize.getHeight(context, 68),
                      width: KSize.getWidth(context, 68),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  MyApp.themeNotifier.value == ThemeMode.dark
                                      ? AssetPath.planeCircleBigDark
                                      : AssetPath.planeCircleBig))),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Havana',
                          style: KTextStyle.headline3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorWhite
                                  : KColor.textColorBlack),
                        ),
                        SizedBox(
                          height: KSize.getHeight(context, 5),
                        ),
                        Text(
                          'Cuba',
                          style: KTextStyle.bodyText3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorGrayDark
                                  : KColor.textColorGray),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Center(
                child: Text(
                  'Economy Class',
                  style: KTextStyle.bodyText2.copyWith(
                      fontWeight: FontWeight.w500,
                      color: MyApp.themeNotifier.value == ThemeMode.dark
                          ? KColor.textColorGrayDark
                          : KColor.textColorGray),
                ),
              ),
              SizedBox(
                height: KSize.getHeight(context, 15),
              ),
              SizedBox(
                height: KSize.getHeight(context, 232),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: KSize.getHeight(context, 232),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          ...List.generate(3, (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: KSize.getHeight(
                                      context, index == 0 ? 10 : 0),
                                  bottom: KSize.getHeight(
                                      context, index != 2 ? 20 : 0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.appBackgroundDark
                                          : KColor.appBackground,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '1'
                                            : index == 1
                                                ? '5'
                                                : '9',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '2'
                                            : index == 1
                                                ? '6'
                                                : '10',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                    Container(
                      height: KSize.getWidth(context, 232),
                      width: KSize.getHeight(context, 9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textFieldUnderlineColorDark
                                  .withOpacity(0.2)
                              : KColor.textColorLightWhite.withOpacity(0.2)),
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 232),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          ...List.generate(3, (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: KSize.getHeight(
                                      context, index == 0 ? 10 : 0),
                                  bottom: KSize.getHeight(
                                      context, index != 2 ? 20 : 0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: index != 0
                                          ? MyApp.themeNotifier.value ==
                                                  ThemeMode.light
                                              ? const Color(0xFFFFE4E4)
                                              : const Color(0xFF984343)
                                          : MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.appBackgroundDark
                                              : KColor.white,
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '3'
                                            : index == 1
                                                ? '7'
                                                : '11',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: index != 0
                                          ? MyApp.themeNotifier.value ==
                                                  ThemeMode.light
                                              ? const Color(0xFFFFE4E4)
                                              : const Color(0xFF984343)
                                          : KColor.primary,
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '4'
                                            : index == 1
                                                ? '8'
                                                : '12',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //business class

              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Center(
                child: Text(
                  'Business Class',
                  style: KTextStyle.bodyText2.copyWith(
                      fontWeight: FontWeight.w500,
                      color: MyApp.themeNotifier.value == ThemeMode.dark
                          ? KColor.textColorGrayDark
                          : KColor.textColorGray),
                ),
              ),
              SizedBox(
                height: KSize.getHeight(context, 15),
              ),
              SizedBox(
                height: KSize.getHeight(context, 232),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: KSize.getHeight(context, 232),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          ...List.generate(3, (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: KSize.getHeight(
                                      context, index == 0 ? 10 : 0),
                                  bottom: KSize.getHeight(
                                      context, index != 2 ? 20 : 0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.appBackgroundDark
                                          : KColor.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '13'
                                            : index == 1
                                                ? '17'
                                                : '21',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.appBackgroundDark
                                          : KColor.white,
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '14'
                                            : index == 1
                                                ? '18'
                                                : '22',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                    Container(
                      height: KSize.getWidth(context, 232),
                      width: KSize.getHeight(context, 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.containerColorTPDark.withOpacity(0.2)
                            : KColor.textColorLightWhite.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 232),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          ...List.generate(3, (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: KSize.getHeight(
                                      context, index == 0 ? 10 : 0),
                                  bottom: KSize.getHeight(
                                      context, index != 2 ? 20 : 0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.appBackgroundDark
                                          : KColor.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '15'
                                            : index == 1
                                                ? '19'
                                                : '23',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: KSize.getHeight(context, 52),
                                    width: KSize.getWidth(context, 52),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.appBackgroundDark
                                          : KColor.white,
                                      border: Border.all(
                                          color: MyApp.themeNotifier.value ==
                                                  ThemeMode.dark
                                              ? KColor.containerColorTPDark
                                              : KColor.textColorLightWhite),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? '16'
                                            : index == 1
                                                ? '20'
                                                : '24',
                                        style: KTextStyle.bodyText2.copyWith(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor.textColorWhite
                                                : KColor.textColorBlack),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: KSize.getHeight(context, 200),
              )
            ],
          ),
        ),
      ),
    );
  }
}
