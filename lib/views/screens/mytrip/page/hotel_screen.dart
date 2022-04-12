import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/global_components/details_card.dart';
import 'package:azel/views/screens/mytrip/page/hotel_details.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyTripHotelScreen extends StatefulWidget {
  const MyTripHotelScreen({Key? key}) : super(key: key);

  @override
  _MyTripHotelScreenState createState() => _MyTripHotelScreenState();
}

class _MyTripHotelScreenState extends State<MyTripHotelScreen> {
  List<Map<String, String>> popularCard = [
    {
      'imagePath': AssetPath.italyManorolaRect,
      'countryName': 'Italy, Manarola',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.germanyBerlinRect,
      'countryName': 'Germany, Berlin',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.veniceBeachRect,
      'countryName': 'Venice, Beach',
      'favIcon': AssetPath.favIconWhite
    },
  ];
  List<Map<String, String>> hotel = [
    {
      'imagePath': AssetPath.hotel1,
      'countryName': 'Water Hotel',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.hotel2,
      'countryName': 'Beach Hotel',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
    {
      'imagePath': AssetPath.hotel3,
      'countryName': 'Ayo Narga',
      'rent': '\$15.99/per day',
      'favIcon': AssetPath.favIconWhite
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: KSize.getWidth(context, 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: KSize.getHeight(context, 5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: KSize.getHeight(context, 5),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(popularCard.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                bottom: KSize.getHeight(context, 30)),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyTripHotelDetailsScreen(
                                              hotelname: hotel[index]
                                                      ['countryName']
                                                  .toString(),
                                            )));
                              },
                              child: FullWidthContainer(
                                value: false,
                                rent: hotel[index]['rent'].toString(),
                                height: KSize.getHeight(context, 190.0),
                                imagePath:
                                    hotel[index]['imagePath'].toString(),
                                countryName:
                                    hotel[index]['countryName'].toString(),
                                packageDetails: '',
                                favIconPath:
                                    hotel[index]['favIcon'].toString(),
                              ),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
