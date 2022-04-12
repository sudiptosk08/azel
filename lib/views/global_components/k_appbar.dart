// ignore_for_file: file_names
import 'package:azel/views/styles/b_style.dart';
import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  // ignore: use_key_in_widget_constructors
  const KAppBar({
    Key? key,
    this.text,
    this.leadiconpress,
    this.leadingicon,
    this.sufixiconpress,
    this.sufixicon,
    this.kToolbarHeight,
    this.elevation,
    this.color = KColor.white,
    this.suffixIconRequired = false,
    this.leadingIconRequired = false,
    this.textRequired,
  }) : preferredSize = const Size.fromHeight(55);
  final String? text;
  final IconData? leadingicon;
  final Color color;
  final String? sufixicon;
  final GestureTapCallback? leadiconpress;
  final GestureTapCallback? sufixiconpress;
  final double? kToolbarHeight;
  final double? elevation;
  final bool? suffixIconRequired;
  final bool? leadingIconRequired;
  final bool? textRequired;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leadingIconRequired!
                    ? Builder(builder: (context) {
                        return InkWell(
                            onTap: leadiconpress,
                            child: Container(
                              alignment: Alignment.center,
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: KColor.grey.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(
                                leadingicon,
                                size: 15,
                                color: KColor.black,
                              ),
                            ));
                      })
                    : Container(),
                textRequired!
                    ? Text(
                        text!,
                        style: KTextStyle.bodyText2.copyWith(
                          color: KColor.textColorBlack,
                        ),
                      )
                    : Container(),
                Row(
                  children: [
                    suffixIconRequired!
                        ? Builder(builder: (context) {
                            return InkWell(
                              onTap: sufixiconpress,
                              child:  Container(
                              alignment: Alignment.center,
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: KColor.grey.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Image.asset(sufixicon!,
                               fit: BoxFit.contain,
                              )
                            ),
                            );
                          })
                        : Container(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      elevation: 0,
    );
  }
}
