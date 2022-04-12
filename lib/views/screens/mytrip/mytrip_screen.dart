
import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/views/screens/mytrip/page/flight_screen.dart';
import 'package:azel/views/screens/mytrip/page/hotel_screen.dart';
import 'package:azel/views/screens/mytrip/page/package_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyTripScreen extends StatefulWidget {
  final String title;
  const MyTripScreen({Key? key, required this.title}) : super(key: key);

  @override
  _MyTripScreenState createState() => _MyTripScreenState();
}

class _MyTripScreenState extends State<MyTripScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
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
                    left: 0,
                    top: KSize.getHeight(context, 50),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Transform.translate(
                                offset: const Offset(-10, 0),
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
                            Container(
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: KTextStyle.headline4,
                    ),
                    Text(
                      "Result found (2)",
                      style: KTextStyle.bodyText3
                          .copyWith(color: KColor.textColorGray),
                    )
                  ],
                )),
            TabBar(
              controller: _tabController,
              padding: EdgeInsets.only(right: KSize.getWidth(context, 60)),
              labelPadding: const EdgeInsets.all(0),
              
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: KColor.red),
                insets: EdgeInsets.symmetric(
                  horizontal: KSize.getWidth(context, 35.0),
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
                  width: KSize.getWidth(context, 75),
                  height: KSize.getHeight(context, 35),
                  alignment: Alignment.center,
                  child: Text(
                    "Packages",
                    style: KTextStyle.subtitle2.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: tabIndex == 0
                            ? KColor.red
                            : MyApp.themeNotifier.value == ThemeMode.light
                                ? KColor.textColorGray
                                : KColor.textColorLightGray),
                    maxLines: 1,
                  ),
                ),
                Container(
                  width: KSize.getWidth(context, 75),
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
                  width: KSize.getWidth(context, 75),
                  height: KSize.getHeight(context, 35),
                  alignment: Alignment.center,
                 
                  child: Text(
                    "Hotels",
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
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: KSize.getHeight(context, 30)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: _tabController, children: const[
                  MyTripPackageScreen(),
                  MyTripFlightScreen(),
                  MyTripHotelScreen(),
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
