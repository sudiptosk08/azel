import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/settings/component/settings_item.dart';
import 'package:azel/views/screens/settings/page/my_profile_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<Map<String, dynamic>> itemlist = [
    {
      "title": "Notification",
      "switchicon": true,
    },
    {
      "title": "Dark Mode",
      "switchicon": true,
    },
    {
      "title": "Email Notification",
      "switchicon": true,
    },
    {
      "title": "About App",
      "switchicon": false,
    },
    {
      "title": "Share App",
      "switchicon": false,
    },
  ];
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
                  SizedBox(
                    height: KSize.getHeight(context, 44),
                    width: KSize.getWidth(context, 44),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.push(context, SizeRoute(page:const MyProfile())),
                    child: Container(
                      height: KSize.getHeight(context, 44),
                      width: KSize.getWidth(context, 44),
                      decoration: const BoxDecoration(
                        color: KColor.profilePicBG,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(AssetPath.homeProfilePic),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 35),
              ),
              Text(
                'Settings',
                style: KTextStyle.headline5.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.textColorWhite
                        : KColor.textColorBlack),
              ),
              SizedBox(
                height: KSize.getHeight(context, 40),
              ),
              ...List.generate(
                  itemlist.length,
                  (index) => SettingsItem(
                      title: itemlist[index]['title'],
                      switchicon: itemlist[index]['switchicon']))
            ],
          ),
        ),
      ),
    );
  }
}
