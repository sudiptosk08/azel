import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class MyOrderCard extends StatefulWidget {
  const MyOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  _MyOrderCardState createState() => _MyOrderCardState();
}

class _MyOrderCardState extends State<MyOrderCard> {
  int secondaryIndex = -1;
  int primaryIndex = 0;

  void changeIndex(int index) {
    setState(() {
      secondaryIndex = index;
    });
  }

  void changePrimaryIndex(int index) {
    setState(() {
      primaryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (secondaryIndex == -1) {
            secondaryIndex = 0;
          } else {
            setState(() {
              secondaryIndex = -1;
            });
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 57,
        decoration: BoxDecoration(
            border: Border.all(width: 0.9, color: KColor.grey.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (secondaryIndex == 0)
              SizedBox(height: KSize.getHeight(context, 7)),
            if (secondaryIndex == 0)
              Container(
                width: KSize.getWidth(context, 40),
                height: KSize.getHeight(context, 47),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: KColor.grey300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "+15",
                  style: KTextStyle.bodyText2,
                ),
              ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: KSize.getWidth(context, 40),
                height: KSize.getHeight(context, 47),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: KColor.grey300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "+15",
                  style: KTextStyle.bodyText2,
                ),
              ),
            ),
          ],
        ),
      ),
      //     const SizedBox(
      //       height: 15,
      //     ),
      //   ],
      // ),
    );
  }
}
