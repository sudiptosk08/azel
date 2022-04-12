import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/screens/mytrip/mytrip_screen.dart';
import 'package:azel/views/screens/search/search_screen.dart';
import 'package:azel/views/screens/settings/setting_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import 'home_screen.dart';

class HomePageBottomNavigation extends StatefulWidget {
  const HomePageBottomNavigation({Key? key}) : super(key: key);

  @override
  _HomePageBottomNavigationState createState() =>
      _HomePageBottomNavigationState();
}

class _HomePageBottomNavigationState extends State<HomePageBottomNavigation> {
  int currentIndex = 0;
  int _selectedItemIndex = 0;
  final List<Widget> _bottomNavPages = const [
    HomeScreen(),
    MyTripScreen(
      title: "My Trip!",
    ),
    SearchScreen(),
    MyTripScreen(
      title: "Saved",
    ),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavPages[currentIndex],
      extendBody: true,
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: KSize.getHeight(context, 90),
            decoration: BoxDecoration(
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.containerColorTPDark
                    : KColor.appBackground,
                boxShadow: [
                  BoxShadow(
                      color: KColor.textColorBlack.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      spreadRadius: 0,
                      blurRadius: 40)
                ]),
          ),
          Row(
            children: [
              buildNavBarItem(
                  AssetPath.homeIcon, 0, 'Home', AssetPath.homeIconSelected),
              buildNavBarItem(AssetPath.mytripIcon, 1, 'My Trip',
                  AssetPath.mytripIconSelected),
              buildNavBarItem(AssetPath.searchIcon, 2, 'Search',
                  AssetPath.searchIconSelected),
              buildNavBarItem(
                  AssetPath.savedIcon, 3, 'Saved', AssetPath.savedIconSelected),
              buildNavBarItem(AssetPath.settingIcon, 4, 'Settings',
                  AssetPath.settingIconSelected),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNavBarItem(
      String image, int index, String text, String selectedImage) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
          _selectedItemIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: KSize.getHeight(context, 90),
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: [
            SizedBox(height: KSize.getHeight(context, 15)),
            Container(
              height: KSize.getHeight(context, 30),
              width: KSize.getWidth(context, 28),
              color: KColor.transparent,
              child: Stack(
                children: [
                  index == _selectedItemIndex
                      ? Positioned(
                          right: 0,
                          top: 2,
                          child: Container(
                            height: KSize.getHeight(context, 14),
                            width: KSize.getWidth(context, 14),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    MyApp.themeNotifier.value == ThemeMode.light
                                        ? AssetPath.selectedBottomNav
                                        : AssetPath.selectedBottomNavDark),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  Center(
                    child: Container(
                      height: KSize.getHeight(context, 20),
                      width: KSize.getWidth(context, 19),
                      decoration: BoxDecoration(
                        //  color: index==_selectedItemIndex? KColor.primary: KColor.transparent,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(index == _selectedItemIndex
                              ? selectedImage
                              : image),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(text,
                    style: index == _selectedItemIndex
                        ? KTextStyle.bodyText4.copyWith(
                            fontSize: 10,
                            color: KColor.primary,
                            fontWeight: FontWeight.w500)
                        : KTextStyle.bodyText4.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: KColor.textColorGray))),
          ],
        ),
      ),
    );
  }
}
