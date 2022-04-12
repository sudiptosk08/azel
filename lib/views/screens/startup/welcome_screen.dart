import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/auth/login_email_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: KColor.appBackground,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetPath.welcomeBg),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: KSize.getHeight(context, 80)),
          child: Column(
            children: [
              Text(
                'Welcome',
                style: KTextStyle.headline1.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: KColor.textColorBlack,
                    letterSpacing: -0.1),
              ),
              SizedBox(
                height: KSize.getHeight(context, 10),
              ),
              Text(
                'Explore the new experince with Azel',
                style:
                    KTextStyle.subtitle2.copyWith(color: KColor.textColorGray),
              ),
              SizedBox(
                height: KSize.getHeight(context, 30),
              ),
              WelcomeButton(
                  text: 'Continue With Google',
                  kbuttonTap: () {
                    Navigator.push(
                        context, FadeRoute(page: const LoginEmailScreen()));
                  },
                  iconText: AssetPath.googleLogo),
              SizedBox(
                height: KSize.getHeight(context, 20),
              ),
              WelcomeButton(
                  text: 'Continue With Facebook',
                  kbuttonTap: () {
                     Navigator.push(
                        context, FadeRoute(page: const LoginEmailScreen()));
                  },
                  iconText: AssetPath.fbLogo)
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
   const WelcomeButton({Key? key, this.text, this.iconText, this.kbuttonTap}) : super(key: key);
  final String? text;
  final String? iconText;

  final GestureTapCallback? kbuttonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: kbuttonTap,
      child: Container(
        alignment: Alignment.center,
        width: KSize.getWidth(context, 295),
        height: KSize.getHeight(context, 60),
        padding: EdgeInsets.symmetric(horizontal: KSize.getWidth(context, 20)),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: KColor.homebuttonBorder,
            ),
            borderRadius: BorderRadius.circular(44),
            color: KColor.homebuttonBG),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            iconText!,
            width: KSize.getWidth(context, 20),
            height: KSize.getHeight(context, 20),
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            width: KSize.getWidth(context, 10),
          ),
          Text(text!,
              textAlign: TextAlign.center,
              style:
                  KTextStyle.bodyText2.copyWith(color: KColor.textColorBlack)),
        ]),
      ),
    );
  }
}
