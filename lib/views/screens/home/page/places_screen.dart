import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/container_card_grid.dart';
import 'package:azel/views/global_components/show_all_screen.dart';
import 'package:azel/views/screens/home/component/category_card.dart';

import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  List<Map<String, dynamic>> flightCard = [
    {'imageicon': AssetPath.darkmenu, 'txt': 'All'},
    {'imageicon': AssetPath.beachicon, 'txt': 'Beach'},
    {'imageicon': AssetPath.forest, 'txt': 'Forest'},
    {'imageicon': AssetPath.mountain, 'txt': 'Mountain'},
    {'imageicon': AssetPath.submarin, 'txt': 'Submarin'},
  ];
  List<Map<String, String>> card = [
    {
      'imagePath': AssetPath.italyManorola,
      'countryName': 'Italy',
      'cityName': 'Manarola',
      'favIconString': AssetPath.favIconWhite,
    },
    {
      'imagePath': AssetPath.germanyBerlinRect,
      'countryName': 'Germany',
      'cityName': 'Berlin',
      'favIconString': AssetPath.favIconWhite,
    },
    {
      'imagePath': AssetPath.veniceBeachRect,
      'countryName': 'Venice',
      'cityName': 'Beach',
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    "Categories",
                    style: KTextStyle.headline6.copyWith(
                        color: KColor.textColorBlack,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    ...List.generate(
                        flightCard.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectedindex = index;
                                  value = true;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(2.3),
                                child: CategoryCard(
                                  backgroundImage: selectedindex == index
                                      ? AssetPath.redcircle
                                      : AssetPath.circle,
                                  imageicon: flightCard[index]['imageicon'],
                                  color: selectedindex == index
                                      ? KColor.cardred
                                      : KColor.white,
                                  iconcolor: selectedindex == index
                                      ? KColor.white
                                      : KColor.black,
                                  txt: flightCard[index]['txt'],
                                ),
                              ),
                            )),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Place',
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
                            title: 'Popular Place',
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
              height: KSize.getHeight(context, 15),
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
                          value: true,
                            imagePath: card[index]['imagePath'].toString(),
                            countryName: card[index]['countryName'].toString(),
                            cityName: card[index]['cityName'].toString(),
                            favIconString:
                                card[index]['favIconString'].toString(),
                            subtitletxtstyle: KTextStyle.headline5
                                .copyWith(color: KColor.white)),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recomended for you',
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
                            title: 'Recomended for you',
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
              height: KSize.getHeight(context, 15),
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
                          value:true,
                          imagePath: card[index]['imagePath'].toString(),
                          countryName: card[index]['countryName'].toString(),
                          cityName: card[index]['cityName'].toString(),
                          favIconString:
                              card[index]['favIconString'].toString(),
                          subtitletxtstyle: KTextStyle.headline5
                              .copyWith(color: KColor.white),
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
