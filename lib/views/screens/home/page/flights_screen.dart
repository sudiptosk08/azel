import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/screens/flights/search_flight_screen.dart';
import 'package:azel/views/screens/home/component/flight_screen_card.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class FlightsScreen extends StatefulWidget {
  const FlightsScreen({Key? key}) : super(key: key);

  @override
  _FlightsScreenState createState() => _FlightsScreenState();
}

class _FlightsScreenState extends State<FlightsScreen> {
  List<Map<String, dynamic>> flightCard = [
    {
      'icon': AssetPath.from,
      'subtitle': 'From',
      'title': 'Sylhet,BD',
      'flag': AssetPath.bdflag,
      'value': true,
    },
    {
      'icon': AssetPath.to,
      'subtitle': 'To',
      'title': 'Manarola,IY',
      'flag': AssetPath.italyflag,
      'value': true,
    },
    {
      'icon': AssetPath.calendar,
      'subtitle': 'Date',
      'title': '20 june,2021',
      'flag': AssetPath.italyflag,
      'value': false,
    },
    {
      'icon': AssetPath.calendar,
      'subtitle': 'Return Date',
      'title': '25 june,2021',
      'flag': AssetPath.italyflag,
      'value': false,
    },
    {
      'icon': AssetPath.friends,
      'subtitle': 'Traveler',
      'title': '1 person',
      'flag': AssetPath.italyflag,
      'value': false,
    },
  ];

  late Offset offset;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: KSize.getWidth(context, 20)),
        child: Column(
          children: [
            ...List.generate(
                flightCard.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: FlightScreenCard(
                        icon: flightCard[index]['icon'],
                        subtitle: flightCard[index]['subtitle'],
                        title: flightCard[index]['title'],
                        flag: flightCard[index]['flag'],
                        value: flightCard[index]['value'],
                      ),
                    )),
            const SizedBox(
              height: 15,
            ),
            KButton(
              buttonimage: false,
              containerColor: KColor.primary,
              getHeight: KSize.getHeight(context, 58),
              getWidth: KSize.getWidth(context, 295),
              text: "Search",
              txtcolor: KColor.white,
              getTextStyle: KTextStyle.headline5.copyWith(color: KColor.white),
              kbuttonTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFlightsScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}


// GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                     context, FadeRoute(page: const SelectSeatScreen()));
//               },
//               child: Container(
//                 height: KSize.getHeight(context, 120),
//                 width: MediaQuery.of(context).size.width,
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Container(
//                         height: KSize.getHeight(context, 110),
//                         width: MediaQuery.of(context).size.width * 0.43,
//                         decoration: BoxDecoration(
//                           color: MyApp.themeNotifier.value == ThemeMode.dark
//                               ? KColor.containerColorTPDark
//                               : KColor.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             MyApp.themeNotifier.value == ThemeMode.light
//                                 ? BoxShadow(
//                                     color: KColor.black.withOpacity(0.05),
//                                     spreadRadius: 0,
//                                     offset: Offset(2, 10),
//                                     blurRadius: 15)
//                                 : const BoxShadow(),
//                           ],
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: KSize.getWidth(context, 20),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'From',
//                               style: KTextStyle.bodyText4.copyWith(
//                                   fontWeight: FontWeight.w500,
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.textColorGrayDark
//                                       : KColor.textColorGray),
//                             ),
//                             SizedBox(
//                               height: KSize.getHeight(context, 5),
//                             ),
//                             Text(
//                               'Sylhet',
//                               style: KTextStyle.headline5.copyWith(
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.white
//                                       : KColor.black),
//                             ),
//                             Text(
//                               'Bangladesh',
//                               style: KTextStyle.bodyText4.copyWith(
//                                   fontWeight: FontWeight.w500,
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.textColorGrayDark
//                                       : KColor.textColorGray),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: Container(
//                         height: KSize.getHeight(context, 110),
//                         width: MediaQuery.of(context).size.width * 0.43,
//                         decoration: BoxDecoration(
//                           color: MyApp.themeNotifier.value == ThemeMode.dark
//                               ? KColor.containerColorTPDark
//                               : KColor.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             MyApp.themeNotifier.value == ThemeMode.light
//                                 ? BoxShadow(
//                                     color: KColor.black.withOpacity(0.05),
//                                     spreadRadius: 0,
//                                     offset: Offset(2, 10),
//                                     blurRadius: 15)
//                                 : const BoxShadow(),
//                           ],
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: KSize.getWidth(context, 20),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'To',
//                               style: KTextStyle.bodyText4.copyWith(
//                                   fontWeight: FontWeight.w500,
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.textColorGrayDark
//                                       : KColor.textColorGray),
//                             ),
//                             SizedBox(
//                               height: KSize.getHeight(context, 5),
//                             ),
//                             Text(
//                               'Manarola',
//                               style: KTextStyle.headline5.copyWith(
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.white
//                                       : KColor.black),
//                             ),
//                             Text(
//                               'Italy',
//                               style: KTextStyle.bodyText4.copyWith(
//                                   fontWeight: FontWeight.w500,
//                                   color: MyApp.themeNotifier.value ==
//                                           ThemeMode.dark
//                                       ? KColor.textColorGrayDark
//                                       : KColor.textColorGray),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: KSize.getHeight(context, 40),
//                         width: KSize.getWidth(context, 40),
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             fit: BoxFit.contain,
//                             image: AssetImage(AssetPath.planeCircle),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: KSize.getHeight(context, 20),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Popular Flights',
//                   style: KTextStyle.bodyText1.copyWith(
//                       fontWeight: FontWeight.w500,
//                       color: MyApp.themeNotifier.value == ThemeMode.dark
//                           ? KColor.textColorWhite
//                           : KColor.textColorBlack),
//                 ),
//                 GestureDetector(
//                   onTapDown: (TapDownDetails details) {
//                     offset = details.globalPosition.translate(20, 20);
//                   },
//                   onTap: () {
//                     final RenderObject? overlay =
//                         Overlay.of(context)?.context.findRenderObject();

//                     showMenu(
//                         color: KColor.transparent,
//                         useRootNavigator: true,
//                         elevation: 0,
//                         // color: Colors.transparent,
//                         context: context,
//                         items: <PopupMenuEntry<int>>[PlusMinusEntry()],
//                         position: RelativeRect.fromRect(
//                           offset & const Size(40, 40),
//                           Offset.zero &
//                               Size(KSize.getHeight(context, 35),
//                                   KSize.getHeight(context, 35)),
//                         ));
//                   },
//                   child: Row(
//                     children: [
//                       Text(
//                         'Sort By',
//                         style: KTextStyle.bodyText3.copyWith(
//                             fontWeight: FontWeight.w600,
//                             color: MyApp.themeNotifier.value == ThemeMode.light
//                                 ? KColor.textColorBlack
//                                 : KColor.textColorWhite),
//                       ),
//                       SizedBox(
//                         width: KSize.getWidth(context, 3),
//                       ),
//                       Image.asset(AssetPath.sortByIcon,
//                           width: KSize.getWidth(context, 12.5),
//                           height: KSize.getHeight(context, 10.5),
//                           fit: BoxFit.contain,
//                           color: MyApp.themeNotifier.value == ThemeMode.light
//                               ? KColor.textColorBlack
//                               : KColor.textColorWhite)
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: KSize.getHeight(context, 25),
//             ),
//             ...List.generate(3, (index) {
//               return Column(
//                 children: [
//                   Container(
//                     height: KSize.getHeight(context, 134),
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       color: MyApp.themeNotifier.value == ThemeMode.dark
//                           ? KColor.textColorBlack
//                           : KColor.white,
//                       border: Border.all(
//                           color: MyApp.themeNotifier.value == ThemeMode.dark
//                               ? KColor.textFieldUnderlineColorDark
//                               : KColor.textColorGray,
//                           width: 0.5),
//                       borderRadius:
//                           BorderRadius.circular(KSize.getWidth(context, 24)),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                           vertical: KSize.getHeight(context, 10)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Center(
//                             child: Text(
//                               index == 0 ? '100% on time' : '90% on time',
//                               style: KTextStyle.bodyText4.copyWith(
//                                   fontSize: 11, color: KColor.primary),
//                             ),
//                           ),
//                           SizedBox(
//                             height: KSize.getHeight(context, 10),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: KSize.getWidth(context, 20)),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       index == 0 ? '7:30 AM' : '7:50 AM',
//                                       style: KTextStyle.bodyText3.copyWith(
//                                         fontWeight: FontWeight.w600,
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textColorWhite
//                                             : KColor.textColorBlack,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Larkrow',
//                                       style: KTextStyle.bodyText4.copyWith(
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textColorGrayDark
//                                             : KColor.textColorGray,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Center(
//                                       child: Container(
//                                         height: KSize.getHeight(context, 15),
//                                         width: KSize.getWidth(context, 13),
//                                         decoration: const BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           image: DecorationImage(
//                                             fit: BoxFit.contain,
//                                             image: AssetImage(
//                                                 AssetPath.smallPlane),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       '2h 40m',
//                                       style: KTextStyle.bodyText4.copyWith(
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textColorGrayDark
//                                             : KColor.textColorGray,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       index == 0 ? '9:30 PM' : '9:50 PM',
//                                       style: KTextStyle.bodyText3.copyWith(
//                                         fontWeight: FontWeight.w600,
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textColorWhite
//                                             : KColor.textColorBlack,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Goa',
//                                       style: KTextStyle.bodyText4.copyWith(
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textColorGrayDark
//                                             : KColor.textColorGray,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: KSize.getHeight(context, 10),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: KSize.getWidth(context, 10),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   height: KSize.getHeight(context, 30),
//                                   width: KSize.getWidth(context, 30),
//                                 ),
//                                 RichText(
//                                   text: TextSpan(
//                                     children: [
//                                       TextSpan(
//                                           text: "\$150",
//                                           style: KTextStyle.bodyText2.copyWith(
//                                               fontWeight: FontWeight.w600,
//                                               color:
//                                                   MyApp.themeNotifier.value ==
//                                                           ThemeMode.dark
//                                                       ? KColor.textColorWhite
//                                                       : KColor.textColorBlack)),
//                                       TextSpan(
//                                           text: '/person',
//                                           style: KTextStyle.bodyText4.copyWith(
//                                               color:
//                                                   MyApp.themeNotifier.value ==
//                                                           ThemeMode.dark
//                                                       ? KColor.textColorGrayDark
//                                                       : KColor.textColorGray))
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   height: KSize.getHeight(context, 30),
//                                   width: KSize.getWidth(context, 30),
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       border: Border.all(
//                                         color: MyApp.themeNotifier.value ==
//                                                 ThemeMode.dark
//                                             ? KColor.textFieldUnderlineColorDark
//                                             : KColor.textColorGray,
//                                       ),
//                                       image: DecorationImage(
//                                           fit: BoxFit.contain,
//                                           image: AssetImage(
//                                               MyApp.themeNotifier.value ==
//                                                       ThemeMode.dark
//                                                   ? AssetPath.favIconWhiteDark
//                                                   : AssetPath.favIconWhite))),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: KSize.getHeight(context, 25),
//                   ),
//                 ],
//               );
//             }),