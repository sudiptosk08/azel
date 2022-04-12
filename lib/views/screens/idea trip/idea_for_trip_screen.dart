import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/show_all_screen.dart';
import 'package:azel/views/screens/idea%20trip/idea_for_trip_details_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class IdeaForTripScreen extends StatefulWidget {
  const IdeaForTripScreen({Key? key}) : super(key: key);

  @override
  _IdeaForTripScreenState createState() => _IdeaForTripScreenState();
}

class _IdeaForTripScreenState extends State<IdeaForTripScreen> {
  late Offset offset;
  List<Map<String, String>> ideaCard = [
    {
      'imagePath': AssetPath.beach,
      'text1': 'What I Expolre in GOA?',
      'text2': 'Adom Shafi - 1 month ago - 2.4m view',
      'user': AssetPath.user3
    },
    {
      'imagePath': AssetPath.hDetailsIm2,
      'text1': 'Secret on Sailob Beach',
      'text2': 'Mansur - 1 month ago - 2.4m view',
      'user': AssetPath.user6
    },
    {
      'imagePath': AssetPath.beach,
      'text1': 'What I Expolre in GOA?',
      'text2': 'Adom Shafi - 1 month ago - 2.4m view',
      'user': AssetPath.user3
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.dark
          ? KColor.appBackgroundDark
          : KColor.appBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: KSize.getWidth(context, 20),
            right: KSize.getWidth(context, 20),
            top: KSize.getHeight(context, 50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(
                height: KSize.getHeight(context, 30),
              ),
              Text(
                'Idea for Trip!',
                style: KTextStyle.buttonText3.copyWith(
                    fontSize: 22,
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? KColor.textColorBlack
                        : KColor.textColorWhite),
              ),
              SizedBox(
                height: KSize.getHeight(context, 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Get some idea for your trip',
                    style: KTextStyle.bodyText3.copyWith(
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? KColor.textColorGray
                            : KColor.textColorGrayDark),
                  ),
                  GestureDetector(
                    onTapDown: (TapDownDetails details) {
                      offset = details.globalPosition.translate(20, 20);
                    },
                    onTap: () {

                      showMenu(
                          color: KColor.transparent,
                          useRootNavigator: true,
                          elevation: 0,
                          // color: Colors.transparent,
                          context: context,
                          items: <PopupMenuEntry<int>>[PlusMinusEntry()],
                          position: RelativeRect.fromRect(
                            offset & const Size(40, 40),
                            Offset.zero &
                                Size(KSize.getHeight(context, 35),
                                    KSize.getHeight(context, 35)),
                          ));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Sort By',
                          style: KTextStyle.bodyText3.copyWith(
                              fontWeight: FontWeight.w600,
                              color:
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? KColor.textColorBlack
                                      : KColor.textColorWhite),
                        ),
                        SizedBox(
                          width: KSize.getWidth(context, 3),
                        ),
                        Image.asset(AssetPath.sortByIcon,
                            width: KSize.getWidth(context, 12.5),
                            height: KSize.getHeight(context, 10.5),
                            fit: BoxFit.contain,
                            color: MyApp.themeNotifier.value == ThemeMode.light
                                ? KColor.textColorBlack
                                : KColor.textColorWhite),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              Column(
                children: [
                  ...List.generate(ideaCard.length, (index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, FadeRoute(page:const IdeaForTripDetailsScreen()));
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: KSize.getHeight(context, 15)),
                        child: Container(
                          height: KSize.getHeight(context, 230),
                          width: MediaQuery.of(context).size.width,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.appBackgroundDark
                              : KColor.appBackground,
                          child: Column(
                            children: [
                              Container(
                                height: KSize.getHeight(context, 170),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      KSize.getWidth(context, 26)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        ideaCard[index]['imagePath'].toString()),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: KSize.getWidth(context, 15),
                                      top: KSize.getHeight(context, 15),
                                      child: Container(
                                        height: KSize.getHeight(context, 26),
                                        width: KSize.getWidth(context, 58),
                                        decoration: BoxDecoration(
                                          color: KColor.white,
                                          borderRadius: BorderRadius.circular(
                                              KSize.getWidth(context, 7)),
                                        ),
                                        child: Center(
                                            child: Text(
                                          '13 : 15',
                                          style: KTextStyle.bodyText4.copyWith(
                                              color: KColor.textColorGray),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: KSize.getHeight(context, 10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: KSize.getHeight(context, 5)),
                                    child: Container(
                                      height: KSize.getHeight(context, 30),
                                      width: KSize.getWidth(context, 30),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              ideaCard[index]['user'].toString()),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: KSize.getWidth(context, 10),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ideaCard[index]['text1'].toString(),
                                        style: KTextStyle.subtitle2.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.light
                                                ? KColor.textColorBlack
                                                : KColor.textColorWhite),
                                      ),
                                      SizedBox(
                                        height: KSize.getHeight(context, 5),
                                      ),
                                      Text(
                                        ideaCard[index]['text2'].toString(),
                                        style: KTextStyle.bodyText4.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.light
                                                ? KColor.textColorGray
                                                : KColor.textColorGrayDark),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
