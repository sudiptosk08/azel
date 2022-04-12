import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/container_card_grid.dart';
import 'package:azel/views/global_components/show_all_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  List<Map<String, String>> card = [
    {
      'imagePath': AssetPath.hotel1,
      'countryName': 'Water Hotel',
      'cityName': '\$15.99/per day',
      'favIconString': AssetPath.favIconWhite,
    },
    {
      'imagePath': AssetPath.hotel2,
      'countryName': 'Beach Hotel',
      'cityName': '\$15.99/per day',
      'favIconString': AssetPath.favIconWhite,
    },
    {
      'imagePath': AssetPath.hotel3,
      'countryName': 'Ayo Nagra',
      'cityName': '\$15.99/per day',
      'favIconString': AssetPath.favIconWhite,
    },
  ];

  List<Map<String, String>> topPackages = [
    {
      'imagePath': AssetPath.barcelona,
      'countryName': 'Spain',
      'cityName': 'Barcelona',
    },
    {
      'imagePath': AssetPath.paris,
      'countryName': 'France',
      'cityName': 'Paris',
    }
  ];
  var selectedindex = 0;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Hotels',
                    style: KTextStyle.subtitle1.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? KColor.textColorBlack
                            : KColor.textColorLightGray),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          FadeRoute(
                              page: const ShowAllScreen(
                            title: 'Choose Hotels',
                          )));
                    },
                    child: Text(
                      'See all',
                      style: KTextStyle.bodyText2.copyWith(
                          fontWeight: FontWeight.w600, color: KColor.primary),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: KSize.getHeight(context, 25),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(card.length, (index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(right: KSize.getWidth(context, 20)),
                        child: ContainerCardGrid(
                          value: false,
                          imagePath: card[index]['imagePath'].toString(),
                          countryName: card[index]['countryName'].toString(),
                          cityName: card[index]['cityName'].toString(),
                          favIconString:
                              card[index]['favIconString'].toString(),
                          subtitletxtstyle: KTextStyle.bodyText4
                              .copyWith(color: KColor.textColorLightGray),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Near to you',
                    style: KTextStyle.subtitle1.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? KColor.textColorBlack
                            : KColor.textColorLightGray),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          FadeRoute(
                              page: const ShowAllScreen(
                            title: 'Choose Hotels',
                          )));
                    },
                    child: Text(
                      'See all',
                      style: KTextStyle.bodyText2.copyWith(
                          fontWeight: FontWeight.w600, color: KColor.primary),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: KSize.getHeight(context, 25),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(card.length, (index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(right: KSize.getWidth(context, 20)),
                        child: ContainerCardGrid(
                          value: false,
                          imagePath: card[index]['imagePath'].toString(),
                          countryName: card[index]['countryName'].toString(),
                          cityName: card[index]['cityName'].toString(),
                          favIconString:
                              card[index]['favIconString'].toString(),
                          subtitletxtstyle: KTextStyle.bodyText4
                              .copyWith(color: KColor.textColorLightGray),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
