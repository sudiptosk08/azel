import 'package:azel/contstants/asset_path.dart';
import 'package:azel/views/global_components/details_card.dart';
import 'package:azel/views/screens/mytrip/page/package_details_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyTripPackageScreen extends StatefulWidget {
  const MyTripPackageScreen({Key? key}) : super(key: key);

  

  @override
  _MyTripPackageScreenState createState() => _MyTripPackageScreenState();
}

class _MyTripPackageScreenState extends State<MyTripPackageScreen> {
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
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: KSize.getWidth(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: KSize.getHeight(context, 5),
              ),
              child: Column(
                children: [
                  ...List.generate(popularCard.length, (index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(bottom: KSize.getHeight(context, 30)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const
                                      MyTripPackageDetailsScreen()));
                        },
                        child:  FullWidthContainer(
                          value: true,
                          rent: '',
                          height: KSize.getHeight(context, 230.0),
                          imagePath: popularCard[index]['imagePath'].toString(),
                          countryName:
                              popularCard[index]['countryName'].toString(),
                          packageDetails: '',
                          favIconPath: popularCard[index]['favIcon'].toString(),
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
    ));
  }
}
