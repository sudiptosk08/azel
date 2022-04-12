import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/screens/flights/search_flight_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class PlaceDetailsScreen extends StatefulWidget {
  const PlaceDetailsScreen({Key? key}) : super(key: key);

  @override
  _PlaceDetailsScreenState createState() => _PlaceDetailsScreenState();
}

class _PlaceDetailsScreenState extends State<PlaceDetailsScreen> {
  List<String> imagecard = [
    AssetPath.barcelona,
    AssetPath.beach,
    AssetPath.germanyBerlinRect,
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
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 10, right: 25.0),
        child: Container(
          height: KSize.getHeight(context, 58),
          width: KSize.getWidth(context, 280),
          decoration: BoxDecoration(
              color: MyApp.themeNotifier.value == ThemeMode.dark
                  ? KColor.containerColorTPDark
                  : KColor.primary,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                MyApp.themeNotifier.value == ThemeMode.light
                    ? BoxShadow(
                        color: KColor.black.withOpacity(0.05),
                        spreadRadius: 0,
                        offset: const Offset(2, 5),
                        blurRadius: 15)
                    : const BoxShadow()
              ]),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, FadeRoute(page: const SearchFlightsScreen()));
              },
              child: Text(
                "Let's Go",
                style: KTextStyle.buttonText1.copyWith(color: KColor.white),
              ),
            ),
          ),
        ),
      ),
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
                      KSize.getWidth(context, 270), -105.0, 0.0),
                  filterQuality: FilterQuality.high,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: KColor.grey.withOpacity(0.5), width: 1),
                      color: KColor.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(children: [
                      ...List.generate(imagecard.length,
                          (index) => imageCard(imagecard[index])),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
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
              offset: Offset(0, KSize.getWidth(context, -110)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  right: KSize.getWidth(context, 20),
                ),
                child: SizedBox(
                  height: KSize.getHeight(context, 270),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "We Know what you want",
                        style: KTextStyle.subtitle1.copyWith(
                            fontWeight: FontWeight.w600,
                            color: MyApp.themeNotifier.value == ThemeMode.dark
                                ? KColor.textColorWhite
                                : KColor.textColorBlack),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Life on land offers plenty of tantalizing options for adventrue travelers, but there's a whole other world of excitemnt waiting under the sea.",
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
                      Container(
                        width: KSize.getWidth(context, 350),
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage(AssetPath.lake),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, KSize.getHeight(context, -90)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  right: KSize.getWidth(context, 20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Best Sunset Ever!',
                      style: KTextStyle.subtitle1.copyWith(
                          fontWeight: FontWeight.w600,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorWhite
                              : KColor.textColorBlack),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Life on land offers plenty of tantalizing options for adventure travelers,but there\'s a whole world of excitement waiting under the sea. ',
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
                    Container(
                      width: KSize.getWidth(context, 350),
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage(AssetPath.riverview),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
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
}
