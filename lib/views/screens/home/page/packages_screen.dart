import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/container_card_grid.dart';
import 'package:azel/views/global_components/details_card.dart';
import 'package:azel/views/global_components/show_all_screen.dart';
import 'package:azel/views/screens/idea%20trip/idea_for_trip_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import '../../../../main.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  _PackagesScreenState createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  late PageController _pageController;

  int activePage = 0;

  List<Map<String, String>> popularCard = [
    {
      'imagePath': AssetPath.veniceBeachRect,
      'countryName': 'Venice Beach',
      'favIcon': AssetPath.favIconRed,
    },
    {
      'imagePath': AssetPath.germanyBerlinRect,
      'countryName': 'Germany Berlin',
      'favIcon': AssetPath.favIconRed,
    },
    {
      'imagePath': AssetPath.italyManorolaRect,
      'countryName': 'Italy Manarola',
      'favIcon': AssetPath.favIconRed,
    },
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

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '101 Packages',
                        style: KTextStyle.bodyText3.copyWith(
                            color: MyApp.themeNotifier.value == ThemeMode.light
                                ? KColor.textColorGray
                                : KColor.textColorLightGray),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              FadeRoute(page: const IdeaForTripScreen()));
                        },
                        child: Text(
                          'See all',
                          style: KTextStyle.bodyText2.copyWith(
                              fontWeight: FontWeight.w600,
                              color: KColor.primary),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(card.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                right: KSize.getWidth(context, 20)),
                            child: ContainerCardGrid(
                                value: true,
                                imagePath: card[index]['imagePath'].toString(),
                                countryName:
                                    card[index]['countryName'].toString(),
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
                SizedBox(
                  height: KSize.getHeight(context, 25),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Packages',
                        style: KTextStyle.subtitle1.copyWith(
                            color: MyApp.themeNotifier.value == ThemeMode.light
                                ? KColor.textColorBlack
                                : KColor.textColorWhite),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              FadeRoute(
                                  page: const ShowAllScreen(
                                title: 'Popular Packages',
                              )));
                        },
                        child: Text(
                          'See all',
                          style: KTextStyle.bodyText2.copyWith(
                              fontWeight: FontWeight.w600,
                              color: KColor.primary),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: KSize.getHeight(context, 250),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: KSize.getHeight(context, 230),
                            child: PageView.builder(
                                itemCount: popularCard.length,
                                pageSnapping: true,
                                controller: _pageController,
                                onPageChanged: (page) {
                                  setState(() {
                                    activePage = page;
                                  });
                                },
                                itemBuilder: (context, pagePosition) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: FullWidthContainer(
                                      rent: '',
                                     value: true,
                                      height: KSize.getHeight(context, 230),
                                      imagePath: popularCard[pagePosition]
                                              ['imagePath']
                                          .toString(),
                                      countryName: popularCard[pagePosition]
                                              ['countryName']
                                          .toString(),
                                      favIconPath: popularCard[pagePosition]
                                              ['favIcon']
                                          .toString(),
                                    ),
                                  );
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ...List.generate(popularCard.length, (ind) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                          height: KSize.getHeight(context, 4),
                                          width: activePage == ind
                                              ? KSize.getWidth(context, 16)
                                              : KSize.getWidth(context, 4),
                                          decoration: BoxDecoration(
                                              color: KColor.primary,
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      );
                                    }),
                                  ],
                                )),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 18),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Packages',
                        style: KTextStyle.subtitle1.copyWith(
                            color: MyApp.themeNotifier.value == ThemeMode.light
                                ? KColor.textColorBlack
                                : KColor.textColorWhite),
                      ),
                      Text(
                        'See all',
                        style: KTextStyle.bodyText2.copyWith(
                            fontWeight: FontWeight.w600, color: KColor.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: KSize.getHeight(context, 15),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(topPackages.length, (i) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TopPackagesCard(
                                imagePath:
                                    topPackages[i]['imagePath'].toString(),
                                cityName: topPackages[i]['cityName'].toString(),
                                countryName:
                                    topPackages[i]['countryName'].toString(),
                              ),
                            );
                          })
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopPackagesCard extends StatelessWidget {
   const TopPackagesCard(
      {Key? key, required this.imagePath,
      required this.cityName,
      required this.countryName}) : super(key: key);
  final String imagePath;
  final String cityName;
  final String countryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: KSize.getWidth(context, 185),
      height: KSize.getHeight(context, 100),
      decoration: BoxDecoration(
        color: MyApp.themeNotifier.value == ThemeMode.light
            ? KColor.containerColorTP
            : KColor.containerColorTPDark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: KSize.getWidth(context, 5),
          ),
          Center(
            child: Container(
              height: KSize.getHeight(context, 85),
              width: KSize.getWidth(context, 85),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(imagePath)),
              ),
            ),
          ),
          SizedBox(
            width: KSize.getWidth(context, 5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cityName,
                style: KTextStyle.headline6.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? KColor.textColorBlack
                        : KColor.textColorWhite),
              ),
              Text(
                countryName,
                style: KTextStyle.bodyText3.copyWith(
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? KColor.textColorGray
                        : KColor.textColorLightGray),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: KColor.starColor,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '4.5',
                    style: KTextStyle.bodyText4.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? KColor.textColorGray
                            : KColor.textColorLightGray),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
