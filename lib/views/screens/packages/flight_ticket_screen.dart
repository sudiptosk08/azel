import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class FlightTicketScreen extends StatefulWidget {
  const FlightTicketScreen({Key? key}) : super(key: key);

  @override
  _FlightTicketScreenState createState() => _FlightTicketScreenState();
}

class _FlightTicketScreenState extends State<FlightTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: KSize.getHeight(context, 20), left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Transform.translate(
                        offset: Offset(KSize.getWidth(context, -5), 0),
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
                    ),
                    Text(
                      'Ticket',
                      style: KTextStyle.subtitle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorWhite
                              : KColor.textColorBlack),
                    ),
                    SizedBox(
                      height: KSize.getHeight(context, 44),
                      width: KSize.getWidth(context, 44),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        AssetPath.ticketbox1,
                      ),
                    ),
                    Positioned(
                        top: KSize.getHeight(context, 2),
                        left: KSize.getWidth(context, 45),
                        child: SizedBox(
                          width: KSize.getWidth(context, 285),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Larkrow",
                                        style: KTextStyle.headline4.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        "UK",
                                        style: KTextStyle.overline.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "7.50AM",
                                        style: KTextStyle.headline4.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        "Larkrow",
                                        style: KTextStyle.overline.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.9, color: KColor.primary),
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(AssetPath.smallPlane),
                                        fit: BoxFit.contain)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Haven",
                                        style: KTextStyle.headline4.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        "Cuba",
                                        style: KTextStyle.overline.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "9.50AM",
                                        style: KTextStyle.headline4.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        "Goa",
                                        style: KTextStyle.overline.copyWith(
                                          color: KColor.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, KSize.getHeight(context, -20)),
                child: Stack(
                  children: [
                    Image.asset(AssetPath.ticketbox2),
                    Positioned(
                        top: 50,
                        left: 50,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      cardColumn("Passengers", "Adom Shafi"),
                                      cardColumn("Flight", "43788554"),
                                      cardColumn("Class", "Business")
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      cardColumn("Date", "03.05.21"),
                                      cardColumn("Gate", "23c"),
                                      cardColumn("Seat", "V2")
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(AssetPath.qrcode)
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(0, -50, 0.0),
                child: KButton(
                  buttonimage: false,
                  containerColor: KColor.primary,
                  getHeight: KSize.getHeight(context, 58),
                  getWidth: KSize.getWidth(context, 295),
                  text: "Downloaded Ticket",
                  getTextStyle:
                      KTextStyle.buttonText1.copyWith(color: KColor.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardColumn(String subtitle, String title) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: KTextStyle.subtitle4.copyWith(color: KColor.textColorGray),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            title,
            style: KTextStyle.subtitle2.copyWith(
                color: KColor.textColorBlack, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
