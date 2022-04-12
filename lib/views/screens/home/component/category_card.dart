import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String imageicon;
  final String backgroundImage;
  final String txt;
  final Color color;
  final Color iconcolor;

  const CategoryCard({
    Key? key,
    required this.imageicon,
    required this.txt,
    required this.color,
    required this.iconcolor,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: KSize.getWidth(context, 67),
      child: Column(
        children: [
          CircleAvatar(
              maxRadius: KSize.getWidth(context, 25),
              minRadius: KSize.getWidth(context, 20),
              backgroundImage: AssetImage(widget.backgroundImage),
              backgroundColor: widget.color,
              child: Image.asset(
                widget.imageicon,
                width: KSize.getWidth(context, 15),
                color: widget.iconcolor,
                fit: BoxFit.fill,
              )),
          Text(
            widget.txt,
            style: KTextStyle.bodyText4.copyWith(color: KColor.textColorGray),
          )
        ],
      ),
    );
  }
}
