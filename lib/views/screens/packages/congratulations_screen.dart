import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/screens/home/home_page_bottm_naviagtion.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class CongratulationsScreen extends StatefulWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  _CongratulationsScreenState createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      body: Padding(
        padding: EdgeInsets.only(
          left: KSize.getWidth(context, 20),
          right: KSize.getWidth(context, 20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
               MyApp.themeNotifier.value == ThemeMode.dark
                        ? AssetPath.congartulationsDark: AssetPath.congratulationsImg,
                height: KSize.getHeight(context, 116),
                width: KSize.getWidth(context, 274),
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: KSize.getHeight(context, 10),
              ),
              Text(
                'You tour has been booked! You will get your tickets on your mail or check your profile',
                style: KTextStyle.bodyText3.copyWith(
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorGrayDark
                        : KColor.textColorGray),
                textAlign: TextAlign.center,

              ),
              SizedBox(
                height: KSize.getHeight(context, 35),
              ),
               KButton(
                kbuttonTap: (){
                   Navigator.push(context, FadeRoute(page:const HomePageBottomNavigation()));
                },
                buttonimage: false,
                text: 'Back to Home',
                txtcolor: KColor.white,
                containerColor: KColor.primary,
                getWidth: KSize.getWidth(context, 295),
                getHeight: KSize.getHeight(context, 58),
              )

            ],
          ),
        ),
      ),
    );
  }
}
