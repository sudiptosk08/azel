import 'package:azel/contstants/asset_path.dart';
import 'package:azel/services/navigation_service.dart';
import 'package:azel/views/global_components/k_button.dart';
import 'package:azel/views/global_components/k_text_field.dart';
import 'package:azel/views/screens/packages/flight_ticket_screen.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class PaymentScreen extends StatefulWidget {
  final int? paymentMethod;
  const PaymentScreen({Key? key, this.paymentMethod}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController cardNumberCr = TextEditingController();
  TextEditingController expireCr = TextEditingController();
  TextEditingController cvvCr = TextEditingController();
  TextEditingController countryCr = TextEditingController();
  TextEditingController zipcodeCr = TextEditingController();
  TextEditingController paypalEmail = TextEditingController();
  var formKey = GlobalKey<FormState>();
  int selectedMethod = 0;

  @override
  void initState() {
    super.initState();
    cardNumberCr.text = '159-107-1369';
    expireCr.text = '6/21';
    cvvCr.text = '633';
    countryCr.text = 'BD';
    zipcodeCr.text = '5699';
    paypalEmail.text = 'hellobesnik@gmail.com';
    if (widget.paymentMethod != null) {
      selectedMethod = widget.paymentMethod!;
    }
  }

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
            top: KSize.getHeight(context, 50),
            right: KSize.getWidth(context, 20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    'Payment',
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
              SizedBox(
                height: KSize.getHeight(context, 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMethod = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.43,
                      height: KSize.getHeight(context, 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          KSize.getWidth(context, 13),
                        ),
                        border: Border.all(
                            color: selectedMethod == 0
                                ? KColor.red
                                : MyApp.themeNotifier.value == ThemeMode.dark
                                    ? KColor.textFieldUnderlineColorDark
                                    : KColor.textColorLightWhite),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            MyApp.themeNotifier.value == ThemeMode.dark
                                ? AssetPath.creditCardDark
                                : AssetPath.creditCard,
                            height: KSize.getHeight(context, 15),
                            width: KSize.getWidth(context, 20),
                          ),
                          SizedBox(
                            width: KSize.getWidth(context, 8),
                          ),
                          Text(
                            'Credit Card',
                            style: KTextStyle.bodyText2.copyWith(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack),
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMethod = 1;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.43,
                      height: KSize.getHeight(context, 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          KSize.getWidth(context, 13),
                        ),
                        border: Border.all(
                            color: selectedMethod == 1
                                ? KColor.red
                                : MyApp.themeNotifier.value == ThemeMode.dark
                                    ? KColor.textFieldUnderlineColorDark
                                    : KColor.textColorLightWhite),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetPath.paypal,
                            height: KSize.getHeight(context, 18),
                            width: KSize.getWidth(context, 15),
                          ),
                          SizedBox(
                            width: KSize.getWidth(context, 8),
                          ),
                          Text(
                            'PayPal',
                            style: KTextStyle.bodyText2.copyWith(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack),
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 25),
              ),
              selectedMethod == 0
                  ? Column(
                      children: [
                        KTextField(
                          labelText: 'Card Number',
                          hintText: 'Enter Card Number',
                          textStyle: KTextStyle.subtitle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyApp.themeNotifier.value == ThemeMode.dark
                                  ? KColor.textColorWhite
                                  : KColor.textColorBlack),
                          textColor: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray,
                          requiredField: false,
                          hintColor: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorGrayDark
                              : KColor.textColorGray,
                          controller: cardNumberCr,
                        ),
                        SizedBox(
                          height: KSize.getHeight(context, 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: KTextField(
                                labelText: 'EX Date',
                                hintText: 'Enter EX Date',
                                textStyle: KTextStyle.subtitle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack),
                                textColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                requiredField: false,
                                hintColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                controller: expireCr,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: KTextField(
                                labelText: 'CVV',
                                hintText: 'Enter CVV',
                                textStyle: KTextStyle.subtitle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack),
                                textColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                requiredField: false,
                                hintColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                controller: cvvCr,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: KSize.getHeight(context, 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date :',
                                  style: KTextStyle.bodyText3.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.dark
                                          ? KColor.textColorGrayDark
                                          : KColor.textColorGray),
                                ),
                                SizedBox(
                                  height: KSize.getHeight(context, 5),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: DropdownButtonFormField(
                                    value: "BD",
                                    icon: Image.asset(
                                      AssetPath.flag,
                                      height: KSize.getHeight(context, 16),
                                      width: KSize.getWidth(context, 16),
                                      fit: BoxFit.contain,
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: MyApp.themeNotifier.value ==
                                                    ThemeMode.dark
                                                ? KColor
                                                    .textFieldUnderlineColorDark
                                                : KColor.grey300!),
                                      ),
                                    ),
                                    dropdownColor: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.appBackgroundDark
                                        : KColor.appBackground,
                                    items: <String>[
                                      'BD',
                                      'BD1',
                                      'BD2',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              value,
                                              style: KTextStyle.subtitle2
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: MyApp.themeNotifier
                                                                  .value ==
                                                              ThemeMode.dark
                                                          ? KColor
                                                              .textColorWhite
                                                          : KColor
                                                              .textColorBlack),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: KTextField(
                                labelText: 'Zip Code',
                                hintText: 'Enter Zip Code',
                                textStyle: KTextStyle.subtitle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.dark
                                        ? KColor.textColorWhite
                                        : KColor.textColorBlack),
                                textColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                requiredField: false,
                                hintColor:
                                    MyApp.themeNotifier.value == ThemeMode.dark
                                        ? KColor.textColorGrayDark
                                        : KColor.textColorGray,
                                controller: zipcodeCr,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : KTextField(
                      labelText: 'Paypal email',
                      hintText: 'Enter paypal email',
                      textStyle: KTextStyle.subtitle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? KColor.textColorWhite
                              : KColor.textColorBlack),
                      textColor: MyApp.themeNotifier.value == ThemeMode.dark
                          ? KColor.textColorGrayDark
                          : KColor.textColorGray,
                      requiredField: false,
                      hintColor: MyApp.themeNotifier.value == ThemeMode.dark
                          ? KColor.textColorGrayDark
                          : KColor.textColorGray,
                      controller: paypalEmail,
                    ),
              SizedBox(
                height: KSize.getHeight(context, 45),
              ),
              KButton(
                kbuttonTap: () {
                  Navigator.push(
                      context, ScaleRoute(page: const FlightTicketScreen()));
                },
                buttonimage: false,
                text: 'Pay \$1,400',
                txtcolor: KColor.white,
                containerColor: KColor.primary,
                getWidth: KSize.getWidth(context, 295),
                getHeight: KSize.getHeight(context, 58),
              )
            ],
          ),
        ),
      ),
    );
  }
}
