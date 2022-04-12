import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/screens/packages/confirmation_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../main.dart';

class PackageDetailsScreen extends StatefulWidget {
  const PackageDetailsScreen({Key? key}) : super(key: key);

  @override
  _PackageDetailsScreenState createState() => _PackageDetailsScreenState();
}

class _PackageDetailsScreenState extends State<PackageDetailsScreen> {
  List<String> images = [
    AssetPath.user1,
    AssetPath.user2,
    AssetPath.user3,
    AssetPath.user4,
    AssetPath.user5
  ];
  List<String> icons = [AssetPath.plane, AssetPath.building, AssetPath.car];
  List<String> iconNames = ['Flight', 'Hotel', 'Transfer'];
  List<String> hotaitDetailsImage = [
    AssetPath.hDetailsIm1,
    AssetPath.hDetailsIm2
  ];
  List<String> hotaitDetailsNames = ['Water Hotel', 'Beach Hotel'];
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
              height: KSize.getHeight(context, 290),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetPath.beach),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  right: KSize.getWidth(context, 20),
                  top: KSize.getHeight(context, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                    Container(
                      height: KSize.getHeight(context, 44),
                      width: KSize.getWidth(context, 44),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                              MyApp.themeNotifier.value == ThemeMode.light
                                  ? AssetPath.favIconRed
                                  : AssetPath.favIconRedBlack),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, KSize.getHeight(context, -40)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: KSize.getHeight(context, 110),
                decoration: BoxDecoration(
                  color: MyApp.themeNotifier.value == ThemeMode.dark
                      ? KColor.appBackgroundDark
                      : KColor.appBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(KSize.getHeight(context, 50)),
                    topRight: Radius.circular(
                      KSize.getHeight(context, 50),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: KSize.getHeight(
                        context,
                        30,
                      ),
                      left: KSize.getWidth(context, 20),
                      right: KSize.getWidth(context, 20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Palolem Beach',
                        style: KTextStyle.headline1
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: KSize.getHeight(context, 5),
                      ),
                      Text(
                        'Italy, Manarola',
                        style: KTextStyle.bodyText1.copyWith(
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: KSize.getWidth(context, 18),
              ),
              child: SizedBox(
                height: KSize.getHeight(context, 35),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ...List.generate(
                          images.length,
                          (ind) {
                            return Transform.translate(
                              offset: Offset(ind == 0 ? 0 : -ind * 20, 0),
                              child: Container(
                                height: KSize.getHeight(context, 35),
                                width: KSize.getWidth(context, 35),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(images[ind]))),
                              ),
                            );
                          },
                        ),
                        Transform.translate(
                          offset: Offset(KSize.getWidth(context, -70), 0),
                          child: Text(
                            '4.5',
                            style: KTextStyle.buttonText2.copyWith(
                              fontWeight: FontWeight.w400,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorGrayDark
                                  : KColor.textColorGray,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(KSize.getWidth(context, -20), 0),
                      child: KButton(
                        buttonimage: false,
                        kbuttonTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context, setState) {
                                  return Container(
                                    height: KSize.getHeight(context, 752),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorBlack
                                          : KColor.white,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: KSize.getHeight(context, 30),
                                        right: KSize.getWidth(context, 20),
                                        left: KSize.getWidth(context, 20),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: KSize.getHeight(
                                                    context, 44),
                                                width:
                                                    KSize.getWidth(context, 44),
                                              ),
                                              Text(
                                                'Check Availability',
                                                style: KTextStyle.headline4
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: MyApp.themeNotifier
                                                                    .value ==
                                                                ThemeMode.dark
                                                            ? KColor
                                                                .textColorWhite
                                                            : KColor
                                                                .textColorBlack),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: KSize.getHeight(
                                                      context, 44),
                                                  width: KSize.getWidth(
                                                      context, 44),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(MyApp
                                                                  .themeNotifier
                                                                  .value ==
                                                              ThemeMode.light
                                                          ? AssetPath.crossImage
                                                          : AssetPath
                                                              .crossImageDark),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SingleChildScrollView(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: KSize.getHeight(
                                                    context, 35),
                                              ),
                                              child: Column(
                                                children: [
                                                  SfDateRangePicker(
                                                    rangeSelectionColor: KColor
                                                        .cyan
                                                        .withOpacity(0.5),
                                                    startRangeSelectionColor:
                                                        KColor.cyan,
                                                    endRangeSelectionColor:
                                                        KColor.cyan,
                                                    view: DateRangePickerView
                                                        .month,
                                                    todayHighlightColor:
                                                        Colors.transparent,
                                                    rangeTextStyle: KTextStyle
                                                        .bodyText1
                                                        .copyWith(
                                                            color:
                                                                KColor.white),
                                                    allowViewNavigation: true,
                                                    enableMultiView: false,
                                                    headerStyle:
                                                        DateRangePickerHeaderStyle(
                                                            textAlign: TextAlign
                                                                .center,
                                                            textStyle: KTextStyle
                                                                .subtitle2
                                                                .copyWith(
                                                                    color: KColor
                                                                        .cyan)),
                                                    monthViewSettings:
                                                        const DateRangePickerMonthViewSettings(
                                                            firstDayOfWeek: 1),
                                                    selectionMode:
                                                        DateRangePickerSelectionMode
                                                            .multiRange,
                                                  ),
                                                  SizedBox(
                                                    height: KSize.getHeight(
                                                        context, 20),
                                                  ),
                                                  KButton(
                                                    text: 'Next',
                                                    buttonimage: false,
                                                    getHeight: KSize.getHeight(
                                                        context, 50),
                                                    getWidth: KSize.getWidth(
                                                        context, 295),
                                                    txtcolor: KColor.white,
                                                    containerColor:
                                                        KColor.primary,
                                                    getTextStyle: KTextStyle
                                                        .buttonText3
                                                        .copyWith(
                                                            color: KColor
                                                                .appBackground,
                                                            fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        containerColor: KColor.primary,
                        txtcolor: KColor.appBackground,
                        text: 'Check Availability',
                        getHeight: KSize.getHeight(context, 40),
                        getWidth: KSize.getWidth(context, 155),
                        getTextStyle: KTextStyle.buttonText3
                            .copyWith(color: KColor.appBackground),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: KSize.getHeight(context, 20),
                left: KSize.getWidth(context, 20),
                right: KSize.getWidth(context, 20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Trip',
                    style: KTextStyle.subtitle1.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 10),
                  ),
                  Text(
                    'Manarola has its own train station and can be reached from either La Spezia or Levanto. From La Spezia, take the local train (treno regionale) in the direction of Sestri Levante and get off at the first stop. From Levanto, take the regional train in the direction of La Spezia Centrale',
                    style: KTextStyle.bodyText4.copyWith(
                        height: 1.5,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorGrayDark
                            : KColor.textColorGray),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 20),
                  ),
                  Text(
                    'What’s Included?',
                    style: KTextStyle.subtitle1.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 15),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (BuildContext context, setState) {
                                return Container(
                                  height: KSize.getHeight(context, 430),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorBlack
                                        : KColor.white,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: KSize.getHeight(context, 30),
                                      right: KSize.getWidth(context, 20),
                                      left: KSize.getWidth(context, 20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height:
                                                  KSize.getHeight(context, 44),
                                              width:
                                                  KSize.getWidth(context, 44),
                                            ),
                                            Text(
                                              'Flight Details',
                                              style: KTextStyle.headline4
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: MyApp.themeNotifier
                                                                  .value ==
                                                              ThemeMode.dark
                                                          ? KColor
                                                              .textColorWhite
                                                          : KColor
                                                              .textColorBlack),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: KSize.getHeight(
                                                    context, 44),
                                                width:
                                                    KSize.getWidth(context, 44),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(MyApp
                                                                .themeNotifier
                                                                .value ==
                                                            ThemeMode.light
                                                        ? AssetPath.crossImage
                                                        : AssetPath
                                                            .crossImageDark),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SingleChildScrollView(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: KSize.getHeight(
                                                    context, 35)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: KSize.getHeight(
                                                      context, 134),
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor.textColorBlack
                                                        : KColor.white,
                                                    border: Border.all(
                                                        color: MyApp.themeNotifier
                                                                    .value ==
                                                                ThemeMode.dark
                                                            ? KColor
                                                                .textFieldUnderlineColorDark
                                                            : KColor
                                                                .textColorGray,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            KSize.getWidth(
                                                                context, 24)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical:
                                                                KSize.getHeight(
                                                                    context,
                                                                    10)),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Center(
                                                          child: Text(
                                                            '100% on time',
                                                            style: KTextStyle
                                                                .bodyText4
                                                                .copyWith(
                                                                    fontSize:
                                                                        11,
                                                                    color: KColor
                                                                        .primary),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              KSize.getHeight(
                                                                  context, 10),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal: KSize
                                                                      .getWidth(
                                                                          context,
                                                                          20)),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    '7:30 AM',
                                                                    style: KTextStyle
                                                                        .bodyText3
                                                                        .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorWhite
                                                                          : KColor
                                                                              .textColorBlack,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Larkrow',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Center(
                                                                    child:
                                                                        Container(
                                                                      height: KSize.getHeight(
                                                                          context,
                                                                          15),
                                                                      width: KSize.getWidth(
                                                                          context,
                                                                          13),
                                                                      decoration: const BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image: DecorationImage(
                                                                              fit: BoxFit.contain,
                                                                              image: AssetImage(AssetPath.smallPlane))),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '2h 40m',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    '9:30 PM',
                                                                    style: KTextStyle
                                                                        .bodyText3
                                                                        .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorWhite
                                                                          : KColor
                                                                              .textColorBlack,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Goa',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              KSize.getHeight(
                                                                  context, 10),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                KSize.getWidth(
                                                                    context,
                                                                    10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        30),
                                                                width: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        30),
                                                              ),
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "\$150",
                                                                        style: KTextStyle.bodyText2.copyWith(
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                                                                ? KColor.textColorWhite
                                                                                : KColor.textColorBlack)),
                                                                    TextSpan(
                                                                        text:
                                                                            '/person',
                                                                        style: KTextStyle
                                                                            .bodyText4
                                                                            .copyWith(color: MyApp.themeNotifier.value == ThemeMode.dark ? KColor.textColorGrayDark : KColor.textColorGray))
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        30),
                                                                width: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        30),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        border: Border
                                                                            .all(
                                                                          color: MyApp.themeNotifier.value == ThemeMode.dark
                                                                              ? KColor.textFieldUnderlineColorDark
                                                                              : KColor.textColorGray,
                                                                        ),
                                                                        image: DecorationImage(
                                                                            fit: BoxFit
                                                                                .contain,
                                                                            image: AssetImage(MyApp.themeNotifier.value == ThemeMode.dark
                                                                                ? AssetPath.favIconWhiteDark
                                                                                : AssetPath.favIconWhite))),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: KSize.getHeight(
                                                      context, 25),
                                                ),
                                                Container(
                                                  height: KSize.getHeight(
                                                      context, 134),
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor.textColorBlack
                                                        : KColor.white,
                                                    border: Border.all(
                                                        color: MyApp.themeNotifier
                                                                    .value ==
                                                                ThemeMode.dark
                                                            ? KColor
                                                                .textFieldUnderlineColorDark
                                                            : KColor
                                                                .textColorGray,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            KSize.getWidth(
                                                                context, 24)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical:
                                                                KSize.getHeight(
                                                                    context,
                                                                    10)),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Center(
                                                          child: Text(
                                                            '90% on time',
                                                            style: KTextStyle
                                                                .bodyText4
                                                                .copyWith(
                                                                    fontSize:
                                                                        11,
                                                                    color: KColor
                                                                        .primary),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              KSize.getHeight(
                                                                  context, 10),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal: KSize
                                                                      .getWidth(
                                                                          context,
                                                                          20)),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    '7:50 AM',
                                                                    style: KTextStyle
                                                                        .bodyText3
                                                                        .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorWhite
                                                                          : KColor
                                                                              .textColorBlack,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Larkrow',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Center(
                                                                    child:
                                                                        Container(
                                                                      height: KSize.getHeight(
                                                                          context,
                                                                          15),
                                                                      width: KSize.getWidth(
                                                                          context,
                                                                          13),
                                                                      decoration: const BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image: DecorationImage(
                                                                              fit: BoxFit.contain,
                                                                              image: AssetImage(AssetPath.smallPlane))),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '2h 40m',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    '9:50 PM',
                                                                    style: KTextStyle
                                                                        .bodyText3
                                                                        .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorWhite
                                                                          : KColor
                                                                              .textColorBlack,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Goa',
                                                                    style: KTextStyle
                                                                        .bodyText4
                                                                        .copyWith(
                                                                      color: MyApp.themeNotifier.value ==
                                                                              ThemeMode
                                                                                  .dark
                                                                          ? KColor
                                                                              .textColorGrayDark
                                                                          : KColor
                                                                              .textColorGray,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              KSize.getHeight(
                                                                  context, 10),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal:
                                                                KSize.getWidth(
                                                                    context,
                                                                    10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        30),
                                                                width: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        30),
                                                              ),
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "\$150",
                                                                        style: KTextStyle.bodyText2.copyWith(
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                                                                ? KColor.textColorWhite
                                                                                : KColor.textColorBlack)),
                                                                    TextSpan(
                                                                        text:
                                                                            '/person',
                                                                        style: KTextStyle
                                                                            .bodyText4
                                                                            .copyWith(color: MyApp.themeNotifier.value == ThemeMode.dark ? KColor.textColorGrayDark : KColor.textColorGray))
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                height: KSize
                                                                    .getHeight(
                                                                        context,
                                                                        30),
                                                                width: KSize
                                                                    .getWidth(
                                                                        context,
                                                                        30),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        border: Border
                                                                            .all(
                                                                          color: MyApp.themeNotifier.value == ThemeMode.dark
                                                                              ? KColor.textFieldUnderlineColorDark
                                                                              : KColor.textColorGray,
                                                                        ),
                                                                        image: DecorationImage(
                                                                            fit: BoxFit
                                                                                .contain,
                                                                            image: AssetImage(MyApp.themeNotifier.value == ThemeMode.dark
                                                                                ? AssetPath.favIconWhiteDark
                                                                                : AssetPath.favIconWhite))),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: KSize.getHeight(
                                                      context, 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                            },
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: KSize.getWidth(context, 32)),
                          child: Column(
                            children: [
                              Container(
                                height: KSize.getHeight(context, 40),
                                width: KSize.getWidth(context, 40),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.containerColorTPDark
                                      : KColor.iconBg,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    icons[0],
                                    height: KSize.getHeight(context, 16),
                                    width: KSize.getWidth(context, 16),
                                    fit: BoxFit.contain,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: KSize.getHeight(context, 5),
                              ),
                              Text(
                                iconNames[0],
                                style: KTextStyle.bodyText4.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.textColorWhite
                                      : KColor.textColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (BuildContext context, setState) {
                                return Container(
                                  height: KSize.getHeight(context, 505),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorBlack
                                        : KColor.white,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: KSize.getHeight(context, 30),
                                      right: KSize.getWidth(context, 20),
                                      left: KSize.getWidth(context, 20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height:
                                                  KSize.getHeight(context, 44),
                                              width:
                                                  KSize.getWidth(context, 44),
                                            ),
                                            Text(
                                              'Hotel Details',
                                              style: KTextStyle.headline4
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: MyApp.themeNotifier
                                                                  .value ==
                                                              ThemeMode.dark
                                                          ? KColor
                                                              .textColorWhite
                                                          : KColor
                                                              .textColorBlack),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: KSize.getHeight(
                                                    context, 44),
                                                width:
                                                    KSize.getWidth(context, 44),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(MyApp
                                                                .themeNotifier
                                                                .value ==
                                                            ThemeMode.light
                                                        ? AssetPath.crossImage
                                                        : AssetPath
                                                            .crossImageDark),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SingleChildScrollView(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: KSize.getHeight(
                                                    context, 35)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ...List.generate(
                                                    hotaitDetailsImage.length,
                                                    (index) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: KSize.getHeight(
                                                            context, 20)),
                                                    child: Container(
                                                      height: KSize.getHeight(
                                                          context, 175),
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(KSize
                                                                    .getWidth(
                                                                        context,
                                                                        25)),
                                                        image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(
                                                              hotaitDetailsImage[
                                                                  index]),
                                                        ),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Positioned.fill(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .circular(KSize
                                                                        .getHeight(
                                                                            context,
                                                                            25)),
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    KColor
                                                                        .white,
                                                                    KColor
                                                                        .transparent,
                                                                    KColor
                                                                        .transparent,
                                                                    KColor.black
                                                                        .withOpacity(
                                                                            0.8)
                                                                  ],
                                                                  end: Alignment
                                                                      .bottomCenter,
                                                                  begin: Alignment
                                                                      .topCenter,
                                                                  stops: const [
                                                                    0,
                                                                    0,
                                                                    0.4,
                                                                    1
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            right:
                                                                KSize.getWidth(
                                                                    context,
                                                                    20),
                                                            top:
                                                                KSize.getHeight(
                                                                    context,
                                                                    20),
                                                            child: Container(
                                                              height: KSize
                                                                  .getHeight(
                                                                      context,
                                                                      30),
                                                              width: KSize
                                                                  .getWidth(
                                                                      context,
                                                                      30),
                                                              decoration: const BoxDecoration(
                                                                  color: KColor
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  image: DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: AssetImage(
                                                                          AssetPath
                                                                              .favIconWhite))),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            bottom:
                                                                KSize.getHeight(
                                                                    context,
                                                                    20),
                                                            left:
                                                                KSize.getWidth(
                                                                    context,
                                                                    20),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          10),
                                                                ),
                                                                Text(
                                                                  hotaitDetailsNames[
                                                                      index],
                                                                  style: KTextStyle
                                                                      .headline2
                                                                      .copyWith(
                                                                          color: KColor
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                ),
                                                                SizedBox(
                                                                  height: KSize
                                                                      .getHeight(
                                                                          context,
                                                                          5),
                                                                ),
                                                                RichText(
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "\$15.99",
                                                                          style: KTextStyle
                                                                              .bodyText2
                                                                              .copyWith(color: KColor.textColorWhite)),
                                                                      TextSpan(
                                                                          text:
                                                                              '/per day',
                                                                          style: KTextStyle
                                                                              .bodyText3
                                                                              .copyWith(color: KColor.textColorLightWhite))
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                })
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                            },
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: KSize.getWidth(context, 32)),
                          child: Column(
                            children: [
                              Container(
                                height: KSize.getHeight(context, 40),
                                width: KSize.getWidth(context, 40),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.containerColorTPDark
                                      : KColor.iconBg,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    icons[1],
                                    height: KSize.getHeight(context, 16),
                                    width: KSize.getWidth(context, 16),
                                    fit: BoxFit.contain,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: KSize.getHeight(context, 5),
                              ),
                              Text(
                                iconNames[1],
                                style: KTextStyle.bodyText4.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.textColorWhite
                                      : KColor.textColorBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: KSize.getWidth(context, 32)),
                        child: Column(
                          children: [
                            Container(
                              height: KSize.getHeight(context, 40),
                              width: KSize.getWidth(context, 40),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.containerColorTPDark
                                        : KColor.iconBg,
                              ),
                              child: Center(
                                child: Image.asset(
                                  icons[2],
                                  height: KSize.getHeight(context, 16),
                                  width: KSize.getWidth(context, 16),
                                  fit: BoxFit.contain,
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.textColorWhite
                                      : KColor.textColorBlack,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: KSize.getHeight(context, 5),
                            ),
                            Text(
                              iconNames[2],
                              style: KTextStyle.bodyText4.copyWith(
                                fontWeight: FontWeight.w700,
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: KSize.getHeight(context, 160),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              KSize.getWidth(context, 12),
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AssetPath.beach))),
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: KSize.getHeight(context, 74),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  KSize.getWidth(context, 12),
                                ),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AssetPath.homeInside1))),
                          ),
                          SizedBox(
                            height: KSize.getHeight(context, 14),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: KSize.getHeight(context, 74),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                KSize.getWidth(context, 12),
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AssetPath.homeInside2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 20),
                  ),
                  KButton(
                    text: 'See all 156 Photos',
                    buttonimage: false,
                    getHeight: KSize.getHeight(context, 48),
                    getWidth: MediaQuery.of(context).size.width,
                    containerColor: MyApp.themeNotifier.value == ThemeMode.dark
                        ? KColor.containerColorTPDark
                        : KColor.containerColorTP,
                    getTextStyle: KTextStyle.buttonText3.copyWith(
                        fontWeight: FontWeight.w500,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.textColorBlack),
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 20),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: KSize.getHeight(context, 210),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        KSize.getWidth(context, 30),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            MyApp.themeNotifier.value == ThemeMode.dark
                                ? AssetPath.mapImageDark
                                : AssetPath.mapImage),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            AssetPath.locationIcon,
                            height: KSize.getHeight(context, 32.1),
                            width: KSize.getWidth(context, 28.2),
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 30,
                          child: Container(
                            width: KSize.getWidth(context, 40),
                            height: KSize.getHeight(context, 40),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.containerColorTPDark
                                  : KColor.white,
                              boxShadow: [
                                BoxShadow(
                                  color: KColor.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  offset: const Offset(0, 5),
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Image.asset(
                                MyApp.themeNotifier.value == ThemeMode.dark
                                    ? AssetPath.sendIconDark
                                    : AssetPath.sendIcon),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: KSize.getHeight(context, 30),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: KSize.getHeight(context, 100),
              padding: EdgeInsets.only(
                top: KSize.getHeight(context, 20),
                left: KSize.getWidth(context, 20),
                right: KSize.getWidth(context, 20),
              ),
              decoration: BoxDecoration(
                  color: MyApp.themeNotifier.value == ThemeMode.dark
                      ? KColor.containerColorTPDark
                      : KColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(KSize.getWidth(context, 30)),
                    topRight: Radius.circular(KSize.getWidth(context, 30)),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: KColor.textColorBlack.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        spreadRadius: 0,
                        blurRadius: 40)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total cost',
                        style: KTextStyle.bodyText4.copyWith(
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorGrayDark
                                : KColor.textColorGray),
                      ),
                      SizedBox(
                        height: KSize.getHeight(context, 5),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "\$770",
                                style: KTextStyle.headline2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack)),
                            TextSpan(
                                text: ' / person',
                                style: KTextStyle.bodyText1.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: KButton(
                      text: 'Book Now',
                      buttonimage: false,
                      getHeight: KSize.getHeight(context, 60),
                      kbuttonTap: () {
                        Navigator.push(
                            context,
                            FadeRoute(
                                page: const ConfirmationScreen(
                              hotelconf: false,
                            )));
                      },
                      getWidth: KSize.getHeight(context, 175),
                      containerColor: KColor.primary,
                      getTextStyle: KTextStyle.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          color: KColor.textColorWhite),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
