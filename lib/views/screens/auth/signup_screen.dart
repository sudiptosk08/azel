import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/global_components/k_text_field.dart';
import 'package:azel/views/screens/auth/login_email_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.appBackgroundDark: KColor.appBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: KSize.getHeight(context, 70),
                left: KSize.getWidth(context, 20),
                right: KSize.getWidth(context, 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Transform.translate(
                    offset: Offset(KSize.getWidth(context, -8), 0),
                    child: Image.asset(
                      MyApp.themeNotifier.value == ThemeMode.dark? AssetPath.backImageDark: AssetPath.backImage,
                      width: KSize.getWidth(context, 44),
                      height: KSize.getHeight(context, 44),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 40),
                ),
                Text(
                  'Sign Up',
                  style: KTextStyle.headline1,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 55),
                ),
                KTextField(
                  labelText: 'Name',
                  requiredField: false,
                  hintColor:MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,
                  hintText: 'Your Name',
                  textColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 25),
                ),
                KTextField(
                  labelText: 'Email',
                  requiredField: false,
                  hintColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,
                  hintText: 'Your Email',
                  textColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 25),
                ),
                KTextField(
                  labelText: 'Password',
                  requiredField: false,
                  hintColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,
                  hintText: 'Your Password',
                  textColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 45),
                ),
                KButton(
                  kbuttonTap: () {},
                  buttonimage: false,
                  text: 'Create Account',
                  getHeight: KSize.getHeight(context, 58),
                  getWidth: KSize.getWidth(context, 295),
                  containerColor: KColor.buttonBackground,
                  txtcolor: KColor.white,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 35),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(context, FadeRoute(page:const LoginEmailScreen()));
                  },
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Already have account? ',
                              style: KTextStyle.bodyText1.copyWith(
                                  color: KColor.textColorGray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: ' Log In',
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
}
