import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/global_components/k_text_field.dart';
import 'package:azel/views/screens/auth/login_password_screen.dart';
import 'package:azel/views/screens/auth/signup_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({Key? key}) : super(key: key);

  @override
  _LoginEmailScreenState createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = 'hellobesnik@gmail.com';
  }

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
                  'What’s Your Email?',
                  style: KTextStyle.headline1,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 55),
                ),
                KTextField(
                  labelText: 'Email',
                  requiredField: false,
                  controller: emailController,
                  hintText: 'Your Email',
                  hintColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,
                  textColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
                ),
                SizedBox(
                  height: KSize.getHeight(context, 45),
                ),
                KButton(
                  kbuttonTap: (){
                     Navigator.push(context, FadeRoute(page:const LoginPasswordScreen()));
                  },
                  buttonimage: false,
                  text: 'Continue',
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
                  onTap: () {Navigator.push(context, FadeRoute(page:const SignupScreen()));},
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Don’t have account? ',
                              style: KTextStyle.bodyText1.copyWith(
                                  color: KColor.textColorGray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: ' Sign Up',
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
