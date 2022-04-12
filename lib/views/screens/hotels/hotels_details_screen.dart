import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/global_components/review_card.dart';
import 'package:azel/views/screens/packages/confirmation_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class HotelDetailsScreen extends StatefulWidget {
  final String hotelname;
  const HotelDetailsScreen({Key? key, required this.hotelname})
      : super(key: key);

  @override
  _HotelDetailsScreenState createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  List<String> images = [
    AssetPath.hotel1,
    AssetPath.hotel2,
    AssetPath.hotel3,
  ];
  List<Map<String, dynamic>> reviews = [
    {
      'profilepic': AssetPath.homeProfilePic,
      'name': "Sami Ahmed",
      'date': "Jun 1,2022",
      'comment':
          "Greate place to stay. Food quality is good.Services are good.Overall value for money"
    },
    {
      'profilepic': AssetPath.homeProfilePic,
      'name': "Mahdi Ahmed",
      'date': "Feb 1,2022",
      'comment':
          "Greate place to stay. Food quality is good.Services are good.Overall value for money"
    },
  ];
  List<Map<String, dynamic>> bedroomcard = [
    {
      'imagepath': AssetPath.kingbed,
      'title': "Bedroom 1",
      'subtitle': "1 King Bed",
    },
    {
      'imagepath': AssetPath.singlebed,
      'title': "Bedroom 1",
      'subtitle': "1 single Bed",
    },
  ];
  List<String> icons = [AssetPath.plane, AssetPath.building, AssetPath.car];
  List<String> iconNames = ['Flight', 'Hotel', 'Transfer'];
  List<String> hotaitDetailsImage = [
    AssetPath.hDetailsIm1,
    AssetPath.hDetailsIm2
  ];
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
            Stack(children: [
              Container(
                height: KSize.getHeight(context, 400),
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
            ]),
            Transform.translate(
              offset: Offset(0, KSize.getHeight(context, -40)),
              child: Stack(children: [
                Container(
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.hotelname,
                                style: KTextStyle.headline1
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: KSize.getHeight(context, 5),
                              ),
                              Text(
                                "Italy,Manarola",
                                style: KTextStyle.bodyText1.copyWith(
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.dark
                                      ? KColor.textColorGrayDark
                                      : KColor.textColorGray,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      KSize.getWidth(context, 270), -100.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: KColor.grey.withOpacity(0.5), width: 1),
                      color: KColor.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      ...List.generate(
                          images.length, (index) => imageCard(images[index])),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: KColor.bluegrey.withOpacity(0.9),
                                width: 1),
                            color: KColor.bluegrey.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "+10",
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
            Transform.translate(
              offset: Offset(0, KSize.getWidth(context, -105)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  right: KSize.getWidth(context, 20),
                ),
                child: SizedBox(
                  height: KSize.getHeight(context, 190),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
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
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, KSize.getHeight(context, -95)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  right: KSize.getWidth(context, 20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reviews',
                          style: KTextStyle.subtitle1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorWhite
                                  : KColor.textColorBlack),
                        ),
                        Text(
                          'See all',
                          style: KTextStyle.subtitle2.copyWith(
                              fontWeight: FontWeight.w600,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorWhite
                                  : KColor.primary),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 25),
                    ),
                    ...List.generate(
                        reviews.length,
                        (index) => ReviewCard(
                              profilepic: reviews[index]['profilepic'],
                              name: reviews[index]['name'],
                              date: reviews[index]['date'],
                              comment: reviews[index]['comment'],
                            )),
                    Text(
                      "Sleeping Arragements",
                      style: KTextStyle.subtitle1,
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          bedroomcard.length,
                          (index) => bedroom(
                                bedroomcard[index]['imagepath'],
                                bedroomcard[index]['title'],
                                bedroomcard[index]['subtitle'],
                              )),
                    ),
                  ],
                ),
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
                                text: "\$30",
                                style: KTextStyle.headline3.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack)),
                            TextSpan(
                                text: ' / night',
                                style: KTextStyle.bodyText1.copyWith(
                                    fontSize: 18,
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
                        Navigator.push(context,
                            FadeRoute(page: const ConfirmationScreen(hotelconf: true,)));
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

  Widget imageCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: KColor.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
      ),
    );
  }

  Widget bedroom(String imagepath, String title, String subtitle) {
    return Container(
      width: KSize.getWidth(context, 152),
      height: KSize.getHeight(context, 130),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: KColor.grey, width: 0.8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagepath),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: KTextStyle.bodyText3.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(subtitle,
              style: KTextStyle.bodyText4.copyWith(color: KColor.textColorGray))
        ],
      ),
    );
  }
}
