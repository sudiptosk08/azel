import 'package:azel/contstants/asset_path.dart';
import 'package:azel/main.dart';
import 'package:azel/views/global_components/k_text_field.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  final int? paymentMethod;

  const MyProfile({Key? key, this.paymentMethod}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TextEditingController nameCr = TextEditingController();
  TextEditingController birthCr = TextEditingController();
  TextEditingController cvvCr = TextEditingController();
  TextEditingController countryCr = TextEditingController();
  TextEditingController zipcodeCr = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  var formKey = GlobalKey<FormState>();
  int selectedMethod = 0;

  @override
  void initState() {
    super.initState();
    nameCr.text = 'Adom Shafi';
    birthCr.text = '6/12/21';
    cvvCr.text = '633';
    countryCr.text = 'BD';
    zipcodeCr.text = '5699';
    email.text = 'hellobesnik@gmail.com';
    number.text = '+880-1704-889-390';
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
                    "My Profile",
                    style: KTextStyle.subtitle2
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Save',
                    style: KTextStyle.bodyText4.copyWith(
                        fontWeight: FontWeight.w600,
                        color: MyApp.themeNotifier.value == ThemeMode.dark
                            ? KColor.textColorWhite
                            : KColor.blue),
                  ),
                ],
              ),
              SizedBox(
                height: KSize.getHeight(context, 35),
              ),
              Center(
                child: Column(children: [
                  Container(
                    height: KSize.getHeight(context, 80),
                    width: KSize.getWidth(context, 80),
                    decoration: const BoxDecoration(
                      color: KColor.profilePicBG,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(AssetPath.homeProfilePic),
                      ),
                    ),
                  ),
                  Text("Upload Photo",
                      style: KTextStyle.bodyText4.copyWith(
                          color: KColor.blue, fontWeight: FontWeight.w700)),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      KTextField(
                        labelText: 'Name',
                        hintText: 'Enter full name',
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
                        controller: nameCr,
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
                              labelText: 'Birth Date',
                              hintText: 'Enter Birth Date',
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
                              controller: birthCr,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gender :',
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
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: DropdownButtonFormField(
                                  value: "Male",
                                  iconSize: 0,
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
                                    'Male',
                                    'Female',
                                    'Others',
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
                                                    fontWeight: FontWeight.w500,
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor.textColorWhite
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
                        ],
                      ),
                      SizedBox(
                        height: KSize.getHeight(context, 25),
                      ),
                      KTextField(
                        labelText: 'Email',
                        hintText: 'Enter your email',
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
                        controller: email,
                      ),
                      SizedBox(
                        height: KSize.getHeight(context, 25),
                      ),
                      KTextField(
                        labelText: 'Mobile',
                        hintText: 'Enter your number',
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
                        controller: number,
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
                                'Country :',
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
                                width: MediaQuery.of(context).size.width * 0.35,
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
                                                    fontWeight: FontWeight.w500,
                                                    color: MyApp.themeNotifier
                                                                .value ==
                                                            ThemeMode.dark
                                                        ? KColor.textColorWhite
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
