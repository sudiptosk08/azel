import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/screens/home/page/flights_screen.dart';
import 'package:azel/views/screens/home/page/hotels_screen.dart';
import 'package:azel/views/screens/home/page/packages_screen.dart';
import 'package:azel/views/screens/home/page/places_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import '../../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: KSize.getHeight(context, 120),
              width: MediaQuery.of(context).size.width,
              color: KColor.transparent,
              child: Stack(
                children: [
                  Positioned(
                    top: KSize.getHeight(context, -30),
                    left: KSize.getWidth(context, -30),
                    child: Container(
                      width: KSize.getWidth(context, 251),
                      height: KSize.getHeight(context, 150),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                              MyApp.themeNotifier.value == ThemeMode.light
                                  ? AssetPath.homeBGMapImgae
                                  : AssetPath.homePageMapDark),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.white
                                      : KColor.appBackgroundDark,
                                  KColor.transparent,
                                  KColor.transparent,
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.white.withOpacity(0.8)
                                      : KColor.appBackgroundDark
                                          .withOpacity(0.8),
                                ],
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                                stops: const [0, 0, 0.7, 0.4],
                              ),
                            ),
                          )),
                          Positioned.fill(
                              child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.white
                                      : KColor.appBackgroundDark,
                                  KColor.transparent,
                                  KColor.transparent,
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.white.withOpacity(0.5)
                                      : KColor.appBackgroundDark
                                          .withOpacity(0.5),
                                ],
                                end: Alignment.centerRight,
                                begin: Alignment.centerLeft,
                                stops: const [0, 0, 0.8, 0.6],
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: KSize.getHeight(context, 50),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 25,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.white
                                      : KColor.black,
                                ),
                                SizedBox(
                                  width: KSize.getWidth(context, 10),
                                ),
                                Text(
                                  'New York,USA',
                                  style: KTextStyle.headline5.copyWith(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorWhite
                                          : KColor.textColorGray),
                                ),
                              ],
                            ),
                            Container(
                              height: KSize.getHeight(context, 44),
                              width: KSize.getWidth(context, 44),
                              decoration: BoxDecoration(
                                color: KColor.profilePicBG,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? const BoxShadow(
                                          color: KColor.profilePicBG,
                                          offset: Offset(0, 5),
                                          spreadRadius: 1,
                                          blurRadius: 5)
                                      : const BoxShadow(
                                          color: KColor.appBackgroundDark,
                                          offset: Offset(0, 5),
                                          spreadRadius: 1,
                                          blurRadius: 5)
                                ],
                                image: const DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(AssetPath.homeProfilePic),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 390,
              child: TabBar(
                labelPadding: const EdgeInsets.all(0),
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: KColor.red),
                  insets: EdgeInsets.symmetric(
                    horizontal: KSize.getWidth(context, 30.0),
                  ),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: false,
                onTap: (n) {
                  setState(() {
                    tabIndex = n;
                  });
                },
                tabs: [
                  Container(
                    width: KSize.getWidth(context, 77),
                    height: KSize.getHeight(context, 35),
                    alignment: Alignment.center,
                    child: Text(
                      "Packages",
                      style: KTextStyle.subtitle2.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: tabIndex == 0
                              ? KColor.red
                              : MyApp.themeNotifier.value == ThemeMode.light
                                  ? KColor.textColorGray
                                  : KColor.textColorLightGray),
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    width: KSize.getWidth(context, 77),
                    height: KSize.getHeight(context, 35),
                    alignment: Alignment.center,
                    child: Text(
                      "Flights",
                      style: KTextStyle.subtitle2.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: tabIndex == 1
                              ? KColor.red
                              : MyApp.themeNotifier.value == ThemeMode.light
                                  ? KColor.textColorGray
                                  : KColor.textColorLightGray),
                    ),
                  ),
                  Container(
                    width: KSize.getWidth(context, 77),
                    height: KSize.getHeight(context, 35),
                    alignment: Alignment.center,
                    child: Text(
                      "Places",
                      style: KTextStyle.subtitle2.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: tabIndex == 2
                              ? KColor.red
                              : MyApp.themeNotifier.value == ThemeMode.light
                                  ? KColor.textColorGray
                                  : KColor.textColorLightGray),
                    ),
                  ),
                  Container(
                    width: KSize.getWidth(context, 77),
                    height: KSize.getHeight(context, 35),
                    alignment: Alignment.center,
                    child: Text(
                      "Hotels",
                      style: KTextStyle.subtitle2.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: tabIndex == 3
                              ? KColor.red
                              : MyApp.themeNotifier.value == ThemeMode.light
                                  ? KColor.textColorGray
                                  : KColor.textColorLightGray),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: KSize.getHeight(context, 30)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: _tabController, children: const [
                  PackagesScreen(),
                  FlightsScreen(),
                  PlaceScreen(),
                  HotelsScreen(),
                ]),
              ),
            ),
            SizedBox(
                height:
                    kBottomNavigationBarHeight + KSize.getHeight(context, 50)),
          ],
        ),
      ),
    );
  }
}
