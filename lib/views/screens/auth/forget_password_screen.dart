import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/global_components/k_text_field.dart';
import 'package:azel/views/screens/auth/verfication_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({ Key? key }) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                        MyApp.themeNotifier.value == ThemeMode.dark? AssetPath.backImageDark: AssetPath.backImage,
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
                  'Forget Password?',
                  style: KTextStyle.headline1,
                
                ),
                SizedBox(
                  height: KSize.getHeight(context, 10),
                ),
                Text(
                  'Enter your email address',
                  style: KTextStyle.subtitle3.copyWith(color: MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,),
                
                ),
                SizedBox(
                  height: KSize.getHeight(context, 55),
                ),
                KTextField(
                 
                  requiredField: false,
                  
                  hintText: 'Your email',
                  hintColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.textColorLightWhite: KColor.textColorGray,
                  textColor: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
                  textAlign: TextAlign.center,
                  
                 
                ),
                SizedBox(
                  height: KSize.getHeight(context, 45),
                ),
                KButton(
                  kbuttonTap: (){
                    Navigator.push(context, FadeRoute(page:const VerificationScreen()));
                  },
                  buttonimage: false,
                  text: 'Send',
                  getHeight: KSize.getHeight(context, 58),
                  getWidth: KSize.getWidth(context, 295),
                  containerColor: KColor.buttonBackground,
                  txtcolor: KColor.white,
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}