import 'package:flutter/material.dart';
import 'package:azel/views/styles/b_style.dart';

class KButton extends StatelessWidget {
  const KButton({
    Key? key,
    this.text,
    this.txtcolor,
    this.containerColor,
    //this.borderColor,
    this.kbuttonTap,
    this.getHeight,
    this.getWidth,
    this.imagepath,
    required this.buttonimage,
    this.getTextStyle,
  }) : super(key: key);
  final String? text;
  final Color? txtcolor;
  final Color? containerColor;
  //final Color? borderColor;
  final GestureTapCallback? kbuttonTap;
  final double? getWidth;
  final double? getHeight;
  final TextStyle? getTextStyle;
  final String? imagepath;
  final bool buttonimage ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: kbuttonTap,
        child: Container(
          alignment: Alignment.center,
          width: getWidth,
          height: getHeight,
          decoration: BoxDecoration(
              // border: Border.all(
              //   width: 0.7,
              //   color: borderColor!,
              // ),
              borderRadius: BorderRadius.circular(40),
              color: containerColor),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            buttonimage == true ?Image.asset(
              imagepath!,
              color: KColor.black,
            ): Container(),
            Text(text!,
                textAlign: TextAlign.center,
                style: getTextStyle ?? KTextStyle.bodyText1
                        .copyWith(color: txtcolor, fontWeight: FontWeight.w600)),
          ]),
        ),
      ),
    );
  }
}
