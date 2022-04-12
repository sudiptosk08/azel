import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/screens/packages/payment_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class FlightsConfirmationScreen extends StatefulWidget {
  const FlightsConfirmationScreen({Key? key}) : super(key: key);

  @override
  _FlightsConfirmationScreenState createState() =>
      _FlightsConfirmationScreenState();
}

class _FlightsConfirmationScreenState extends State<FlightsConfirmationScreen> {
  int number=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
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
                    'Confirmation',
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
              Text(
                'Your Flight',
                style: KTextStyle.headline5.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date :',
                    style: KTextStyle.bodyText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                  Text(
                    'Edit',
                    style: KTextStyle.bodyText3.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: KColor.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Text(
                '10 May, 10 AM GST',
                style: KTextStyle.subtitle2.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'From :',
                    style: KTextStyle.bodyText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                  Text(
                    'Edit',
                    style: KTextStyle.bodyText3.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: KColor.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Text(
                'Sylhet, BD',
                style: KTextStyle.subtitle2.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'To :',
                    style: KTextStyle.bodyText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                  Text(
                    'Edit',
                    style: KTextStyle.bodyText3.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: KColor.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Text(
                'Italy, Manarola',
                style: KTextStyle.subtitle2.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flight :',
                    style: KTextStyle.bodyText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                  Text(
                    'Edit',
                    style: KTextStyle.bodyText3.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: KColor.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Text(
                'Alaska Airlines',
                style: KTextStyle.subtitle2.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gueste :',
                        style: KTextStyle.bodyText3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorGrayDark
                                : KColor.textColorGray),
                      ),
                      SizedBox(
                        height: KSize.getHeight(context, 5),
                      ),
                      Text(
                        '2 Gueste',
                        style: KTextStyle.subtitle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorWhite
                                : KColor.textColorBlack),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (number > 0) {
                            setState(() {
                              number--;
                            });
                          }
                        },
                        child: Container(
                          height: KSize.getHeight(context, 25),
                          width: KSize.getWidth(context, 25),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: KSize.getWidth(context, 12),
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorGrayDark
                                  : KColor.textColorGray,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: KSize.getWidth(context, 10),
                      ),
                      Text(
                        '$number',
                        style: KTextStyle.bodyText1.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorWhite
                                : KColor.textColorBlack),
                      ),
                      SizedBox(
                        width: KSize.getWidth(context, 10),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            number++;
                          });
                        },
                        child: Container(
                          height: KSize.getHeight(context, 25),
                          width: KSize.getWidth(context, 25),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: KSize.getWidth(context, 12),
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorGrayDark
                                  : KColor.textColorGray,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info_rounded,
                    size: KSize.getHeight(context, 15),
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorGrayDark
                        : KColor.textColorGray,
                  ),
                  SizedBox(
                    width: KSize.getWidth(context, 8),
                  ),
                  Text(
                    'Every person you add it will be \$700',
                    style: KTextStyle.bodyText4.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 30),
              ),
              Divider(
                height: KSize.getHeight(context, 1.5),
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.textColorGrayDark
                    : KColor.textColorLightWhite,
              ),
              SizedBox(
                height: KSize.getHeight(context, 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: KTextStyle.bodyText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                  ),
                  Text(
                    '\$1,400',
                    style: KTextStyle.subtitle2.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                ],
              ),
               SizedBox(
                height: KSize.getHeight(context, 50),
              ),
              KButton(
                kbuttonTap: (){
                 Navigator.push(context, FadeRoute(page:const PaymentScreen(paymentMethod: 1,)));
                },
                buttonimage: false,
                text:'Continue', txtcolor: KColor.white, containerColor: KColor.primary, getHeight: KSize.getHeight(context, 58), getWidth: KSize.getWidth(context, 295),)
            ],
          ),
        ),
      ),
    );
  }
}
