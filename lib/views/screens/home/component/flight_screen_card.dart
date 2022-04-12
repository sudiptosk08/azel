import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class FlightScreenCard extends StatefulWidget {
  final String icon;
  final String subtitle;
  final String title;
  final String? flag;
  final bool value;
  const FlightScreenCard(
      {Key? key,
      required this.icon,
      required this.subtitle,
      required this.title,
      this.flag,
      required this.value})
      : super(key: key);

  @override
  _FlightScreenCardState createState() => _FlightScreenCardState();
}

class _FlightScreenCardState extends State<FlightScreenCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        height: KSize.getWidth(context, 60),
        width: KSize.getWidth(context, 60),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: KColor.grey.withOpacity(0.3), width: 1),
              right: BorderSide(color: KColor.grey.withOpacity(0.3), width: 1)),
        ),
        child: Image.asset(
          widget.icon,
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        height: KSize.getWidth(context, 60),
        width: KSize.getWidth(context, 265),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: KColor.grey.withOpacity(0.3), width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(widget.subtitle,
              style: KTextStyle.subtitle4.copyWith(color: KColor.textColorGray),
              ), Text(widget.title,
              style: KTextStyle.subtitle2.copyWith(color: KColor.black,
              fontWeight: FontWeight.bold
              ),
              )],
            ),
            widget.value == true ? Image.asset(widget.flag!) : Container(),
          ],
        ),
      )
    ]));
  }
}
