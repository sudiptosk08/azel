// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:another_xlider/another_xlider.dart';
import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/screens/mytrip/page/flight_screen.dart';
import 'package:azel/views/screens/mytrip/page/hotel_screen.dart';
import 'package:azel/views/screens/mytrip/page/package_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  var selectedgender;

  var selectedsize;
  var searchtext;
  // ignore: unused_field
  final double _lowerValue = 1;
  // ignore: unused_field
  final double _upperValue = 10000;
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 45.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: KSize.getHeight(context, 58),
                      width: KSize.getHeight(context, 243),
                      decoration: BoxDecoration(
                        color: KColor.searchboxColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: TextField(
                          onChanged: (key) {
                            setState(() {
                              searchtext = key;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Search',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  AssetPath.search,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 12)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: KSize.getWidth(context, 16)),
                  Text(
                    "Cancel",
                    style: KTextStyle.bodyText3
                        .copyWith(color: KColor.errorRedText),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: KSize.getWidth(context, 310),
                  child: TabBar(
                    controller: _tabController,
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
                        width: KSize.getWidth(context, 73),
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
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      Container(
                        width: KSize.getWidth(context, 73),
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
                        width: KSize.getWidth(context, 73),
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
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, setState) {
                              return Container(
                                height: KSize.getHeight(context, 610),
                                decoration: const BoxDecoration(
                                    color: KColor.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0))),
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal:
                                                KSize.getWidth(context, 24)),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: KSize.getHeight(
                                                      context, 10)),
                                              Center(
                                                  child: Container(
                                                height: 5,
                                                width:
                                                    KSize.getWidth(context, 80),
                                                decoration: BoxDecoration(
                                                    color: KColor.grey300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              )),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: KSize.getWidth(
                                                        context, 0),
                                                    top: KSize.getHeight(
                                                        context, 20)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Price Range",
                                                      style: KTextStyle
                                                          .subtitle2
                                                          .copyWith(
                                                        color: KColor
                                                            .textColorBlack,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 20),
                                              Text(
                                                "US\$10 - US\$1000+ ",
                                                style: KTextStyle.subtitle2
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: KColor
                                                            .textColorBlack),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "The avarage nightly price is \$150",
                                                style: KTextStyle.bodyText4
                                                    .copyWith(
                                                        color: KColor
                                                            .textColorGray),
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Center(
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      KSize.getWidth(
                                                          context, 4)),
                                                  child: Container(
                                                      height: 100,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 5,
                                                              left: 20,
                                                              right: 20),
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: FlutterSlider(
                                                        values: const [1, 9999],
                                                        rangeSlider: true,
                                                        max: 9999,
                                                        min: 1,
                                                        step:
                                                            const FlutterSliderStep(
                                                                step: 100),
                                                        jump: true,
                                                        handlerWidth: 55,
                                                        handlerHeight: 55,
                                                        trackBar:
                                                            const FlutterSliderTrackBar(
                                                          inactiveTrackBarHeight:
                                                              2,
                                                          activeTrackBar:
                                                              BoxDecoration(
                                                            color:
                                                                KColor.primary,
                                                          ),
                                                          activeTrackBarHeight:
                                                              3,
                                                        ),
                                                        disabled: false,
                                                        handler: customHandler(
                                                            Icons
                                                                .chevron_right),
                                                        rightHandler:
                                                            customHandler(Icons
                                                                .chevron_left),
                                                        tooltip:
                                                            FlutterSliderTooltip(
                                                          direction:
                                                              FlutterSliderTooltipDirection
                                                                  .top,
                                                          alwaysShowTooltip:
                                                              true,
                                                          leftPrefix: const Icon(
                                                              Icons
                                                                  .attach_money,
                                                              size: 14,
                                                              color: KColor
                                                                  .textColorGray),
                                                          rightPrefix:
                                                              const Icon(
                                                            Icons.attach_money,
                                                            size: 14,
                                                            color: KColor
                                                                .textColorGray,
                                                          ),
                                                          textStyle:
                                                              const TextStyle(
                                                            fontSize: 17,
                                                            color: KColor
                                                                .textColorGray,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                              ),
                                              SizedBox(
                                                child: Text(
                                                  "Location",
                                                  style: KTextStyle.subtitle2
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              Text(
                                                "Use Location",
                                                style: KTextStyle.subtitle2
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                              Text(
                                                "Please add location for your destination",
                                                style: KTextStyle.bodyText4
                                                    .copyWith(
                                                        color: KColor
                                                            .textColorGray,
                                                        fontWeight:
                                                            FontWeight.w500),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: KSize.getHeight(
                                                    context, 160),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    KSize.getWidth(context, 30),
                                                  ),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(MyApp
                                                                .themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? AssetPath.mapImageDark
                                                        : AssetPath.mapImage),
                                                  ),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Center(
                                                      child: Image.asset(
                                                        AssetPath.locationIcon,
                                                        height: KSize.getHeight(
                                                            context, 32.1),
                                                        width: KSize.getWidth(
                                                            context, 28.2),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 20,
                                                      right: 30,
                                                      child: Container(
                                                        width: KSize.getWidth(
                                                            context, 40),
                                                        height: KSize.getHeight(
                                                            context, 40),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: MyApp.themeNotifier
                                                                      .value ==
                                                                  ThemeMode.dark
                                                              ? KColor
                                                                  .containerColorTPDark
                                                              : KColor.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: KColor
                                                                  .black
                                                                  .withOpacity(
                                                                      0.2),
                                                              spreadRadius: 2,
                                                              offset:
                                                                  const Offset(
                                                                      0, 5),
                                                              blurRadius: 20,
                                                            ),
                                                          ],
                                                        ),
                                                        child: Image.asset(MyApp
                                                                    .themeNotifier
                                                                    .value ==
                                                                ThemeMode.dark
                                                            ? AssetPath
                                                                .sendIconDark
                                                            : AssetPath
                                                                .sendIcon),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30.0, top: 20, right: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showDialog<void>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24)),
                                                      child: SizedBox(
                                                        height: KSize.getHeight(
                                                            context, 320),
                                                        child:
                                                            SingleChildScrollView(
                                                          physics:
                                                              const BouncingScrollPhysics(),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          20)),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            30.0,
                                                                        right:
                                                                            30.0,
                                                                        top:
                                                                            20),
                                                                child: Center(
                                                                  child: Text(
                                                                      'Are You Sure Want To Delete?',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: KTextStyle
                                                                          .headline5
                                                                          .copyWith(
                                                                              fontSize: 28)),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                  horizontal: KSize
                                                                      .getWidth(
                                                                          context,
                                                                          15),
                                                                  vertical: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          8),
                                                                ),
                                                                child: Text(
                                                                  'This app requires that your location service are turned on your device and for this app',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: KTextStyle
                                                                      .caption
                                                                      .copyWith(
                                                                          color:
                                                                              KColor.textColorGray),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          18)),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: KSize
                                                                      .getWidth(
                                                                          context,
                                                                          11),
                                                                  right: KSize
                                                                      .getWidth(
                                                                          context,
                                                                          14),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child:
                                                                      KButton(
                                                                    buttonimage:
                                                                        false,
                                                                    containerColor:
                                                                        KColor
                                                                            .primary,
                                                                    getHeight: KSize
                                                                        .getHeight(
                                                                            context,
                                                                            58),
                                                                    getWidth: KSize
                                                                        .getWidth(
                                                                            context,
                                                                            271),
                                                                    text:
                                                                        "Yes, I'm",
                                                                    getTextStyle: KTextStyle
                                                                        .bodyText2
                                                                        .copyWith(
                                                                            color:
                                                                                KColor.white),
                                                                    txtcolor:
                                                                        KColor
                                                                            .white,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          24)),
                                                              Center(
                                                                  child:
                                                                      InkWell(
                                                                onTap: null,
                                                                child: Text(
                                                                  "Not Now",
                                                                  style: KTextStyle
                                                                      .bodyText2
                                                                      .copyWith(
                                                                          color:
                                                                              KColor.red),
                                                                ),
                                                              ))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                  color: KColor.errorRedText,
                                                ))),
                                                child: Text(
                                                  "Clear",
                                                  style: KTextStyle.headline5
                                                      .copyWith(
                                                    color: KColor.errorRedText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            KButton(
                                              containerColor: KColor.primary,
                                              getHeight:
                                                  KSize.getHeight(context, 50),
                                              getTextStyle: KTextStyle
                                                  .buttonText2
                                                  .copyWith(
                                                      fontSize: 18,
                                                      color: KColor.white),
                                              getWidth:
                                                  KSize.getWidth(context, 245),
                                              buttonimage: false,
                                              kbuttonTap: () =>
                                                  showDialog<void>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Dialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                    child: SizedBox(
                                                      height: KSize.getHeight(
                                                          context, 290),
                                                      child:
                                                          SingleChildScrollView(
                                                        physics:
                                                            const BouncingScrollPhysics(),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        40)),
                                                            Center(
                                                              child: Text(
                                                                  'Enable Location',
                                                                  style: KTextStyle
                                                                      .headline5
                                                                      .copyWith(
                                                                          fontSize:
                                                                              28)),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                horizontal: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        15),
                                                                vertical: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        8),
                                                              ),
                                                              child: Text(
                                                                'This app requires that your location service are turned on your device and for this app',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: KTextStyle
                                                                    .caption
                                                                    .copyWith(
                                                                        color: KColor
                                                                            .textColorGray),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        5)),
                                                            SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        26)),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        11),
                                                                right: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        14),
                                                              ),
                                                              child: KButton(
                                                                buttonimage:
                                                                    false,
                                                                containerColor:
                                                                    KColor
                                                                        .primary,
                                                                getHeight: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        58),
                                                                getWidth: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        271),
                                                                text:
                                                                    "Allow only using this app",
                                                                getTextStyle: KTextStyle
                                                                    .buttonText1
                                                                    .copyWith(
                                                                        fontSize:
                                                                            18,
                                                                        color: KColor
                                                                            .white),
                                                                txtcolor: KColor
                                                                    .white,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        24)),
                                                            Center(
                                                                child: InkWell(
                                                              onTap: null,
                                                              child: Text(
                                                                "Not Now",
                                                                style: KTextStyle
                                                                    .bodyText2
                                                                    .copyWith(
                                                                        color: KColor
                                                                            .red),
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              text: "Apply",
                                              txtcolor: KColor.white,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        });
                  },
                  child: Container(
                    width: 50,
                    height: KSize.getHeight(context, 58),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage(AssetPath.filter))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: KSize.getHeight(context, 30)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: _tabController, children: [
                  searchtext == "Packages"
                      ? const MyTripPackageScreen()
                      : Container(),
                  searchtext == "Flights"
                      ? const MyTripFlightScreen()
                      : Container(),
                  searchtext == "Hotels"
                      ? const MyTripHotelScreen()
                      : Container(),
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

  FlutterSliderHandler customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Container(
        decoration: const BoxDecoration(
          color: KColor.primary,
          shape: BoxShape.circle,
        ),
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration:
              const BoxDecoration(color: KColor.white, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: KColor.white,
            size: 10,
          ),
        ),
      ),
    );
  }
}
