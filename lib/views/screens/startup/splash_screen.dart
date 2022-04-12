// ignore_for_file: avoid_print

import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/startup/welcome_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    initData();
  }
  initData()async{
    print('Thememode: '+ThemeMode.system.index.toString());
      await Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.push(context, FadeRoute(page:const WelcomeScreen())),
    );
    
  }
  @override
  Widget build(BuildContext context) {
    print('mode: '+MyApp.themeNotifier.value.toString());
     print('Thememode1: '+ThemeMode.system.index.toString());
    return Scaffold(
      backgroundColor:MyApp.themeNotifier.value == ThemeMode.dark? KColor.appBackgroundDark: KColor.appBackground,
      body: Center(
        child: Image.asset(AssetPath.splashLogo,height: KSize.getHeight(context, 162),width: KSize.getWidth(context, 188), fit: BoxFit.contain,))
      
    );
  }
}