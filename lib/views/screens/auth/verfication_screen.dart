// ignore_for_file: non_constant_identifier_names

import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../main.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController first_number = TextEditingController();
  TextEditingController second_number = TextEditingController();
  TextEditingController third_number = TextEditingController();
  TextEditingController fourth_number = TextEditingController();

  @override
  void initState() {
    super.initState();
    first_number.text = '5';
    second_number.text = '3';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: KSize.getHeight(context, 70),
                left: KSize.getWidth(context, 20),
                right: KSize.getWidth(context, 20)),
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Transform.translate(
                    offset: Offset(KSize.getWidth(context, -8), 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
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
                ),
                SizedBox(
                  height: KSize.getHeight(context, 40),
                ),
                Text(
                  'Verification',
                  style: KTextStyle.headline1,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 15),
                ),
                Text(
                  'Please enter the code we sent to',
                  style: KTextStyle.subtitle3.copyWith(
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorLightWhite
                        : KColor.textColorGray,
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 5),
                ),
                Text(
                  'he*******nik@gmail.com',
                  style: KTextStyle.subtitle3.copyWith(
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorLightWhite
                        : KColor.textColorGray,
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 55),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circularContainer(first_number,0,false),
                    circularContainer(second_number,1,false),
                    circularContainer(third_number, 2,true),
                    circularContainer(fourth_number, 3,false),
                  ],
                ),
                SizedBox(
                  height: KSize.getHeight(context, 35),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {},
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'I don’t recevie a code! ',
                              style: KTextStyle.bodyText1.copyWith(
                                  color: KColor.textColorGray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: ' Please Resend',
                              style: KTextStyle.bodyText1.copyWith(
                                  color: KColor.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget circularContainer(TextEditingController controller,int index, bool redBorder) {
    bool _redBorder=redBorder;
    return Padding(
      padding: EdgeInsets.only(right: KSize.getWidth(context, 5)),
      child: Container(
        height: KSize.getHeight(context, 65),
        width: KSize.getWidth(context, 65),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: KColor.transparent,
          border: Border.all(
              color: (controller.text == '' && _redBorder)
                  ? KColor.red
                  : MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorGray.withOpacity(0.4)
                        : KColor.textColorLightGray),
        ),
        child: Center(
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: controller,
            cursorColor: KColor.textColorGray,
            keyboardType: TextInputType.number,
            autofocus: index==2,
            textAlign: TextAlign.center,
            style: KTextStyle.headline4.copyWith(
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.white
                    : KColor.black),
            onChanged: (str){
              setState(() {
                _redBorder=true;
              });
            },
            decoration: const InputDecoration(
              border:InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
