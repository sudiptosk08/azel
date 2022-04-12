import 'package:azel/main.dart';
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsItem extends StatefulWidget {
  final String title;
  final bool switchicon;
  final GestureTapCallback? onPressed;
  const SettingsItem(
      {Key? key, required this.title, required this.switchicon, this.onPressed})
      : super(key: key);

  @override
  _SettingsItemState createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool _darkui = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: KTextStyle.bodyText3.copyWith(
                fontWeight: FontWeight.w500,
                color: MyApp.themeNotifier.value == ThemeMode.dark
                    ? KColor.textColorGrayDark
                    : KColor.textColorBlack),
          ),
          widget.switchicon == true
              ? SizedBox(
                  child: FlutterSwitch(
                    width: 35.0,
                    inactiveColor: KColor.textColorLightGray,
                    height: 20.0,
                    toggleSize: 17.0,
                    value: _darkui,
                    borderRadius: 20.0,
                    padding: 2.5,
                    activeColor: KColor.blue,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        _darkui = val;
                      });
                    },
                  ),
                )
              : GestureDetector(
                  onTap: widget.onPressed,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: KColor.textColorBlack,
                    size: 18,
                  ))
        ],
      ),
      const Divider(
        color: KColor.textColorLightGray,
        endIndent: 1,
        indent: 1,
        height: 50,
        thickness: 0.9,
      ),
    ]);
  }
}
