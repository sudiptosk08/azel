import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:azel/views/styles/b_style.dart';

import '../../main.dart';

// ignore: must_be_immutable
class KTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final bool? requiredField;
  final Color? hintColor;
  final Icon? suffixIcon;
  final Widget? prefixIcon;
  final bool hasPrefixIcon;
  final bool isPasswordField;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final double widthFactor;
  final bool isReadOnly;
  final Function()? onTap;
  final int maxLines;
  final int minLines;
  final double topMargin;
  final double borderRadius;
  final bool isClearableField;
  final FormFieldValidator? validator;
  String? errorMessage;
  final Function(String value)? callBackFunction;
  final bool callBack;
  final Color? textColor;
  final bool suffixCallback;
  final Function()? suffixCallbackFunction;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  // ignore: prefer_typing_uninitialized_variables
  final inputBorder;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  KTextField({Key? key, 
    this.labelText,
    this.requiredField = true,
    this.hintText,
    this.initialValue,
    this.hintColor,
    this.suffixIcon,
    this.prefixIcon,
    this.hasPrefixIcon = false,
    this.isPasswordField = false,
    this.controller,
    this.widthFactor = 1,
    this.textInputType = TextInputType.text,
    this.isReadOnly = false,
    this.onTap,
    this.maxLines = 1,
    this.minLines = 1,
    this.topMargin = 0,
    this.borderRadius = 6.0,
    this.isClearableField = false,
    this.validator,
    this.errorMessage = "",
    this.callBack = false,
    this.callBackFunction,
   this.textAlign=TextAlign.start,
    this.textColor = KColor.black,
    this.suffixCallback = false,
    this.suffixCallbackFunction,
    this.autofocus = false,
    this.inputFormatters,
    this.textStyle,
    this.inputBorder = const UnderlineInputBorder(),
  }) : super(key: key);
  @override
  _KTextFieldState createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  bool _isClearableText = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              Text(widget.labelText ?? '',
                  textAlign: TextAlign.center,
                  style: KTextStyle.bodyText2.copyWith(
                    color: widget.textColor!.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  )),
              if (widget.requiredField!)
                Text('*',
                    textAlign: TextAlign.center,
                    style: KTextStyle.bodyText2.copyWith(color: KColor.red)),
            ],
          ),
        Container(
          width: MediaQuery.of(context).size.width * widget.widthFactor,
          height: KSize.getHeight(context, 60),
          padding: widget.hasPrefixIcon
              ? const EdgeInsets.symmetric(horizontal: 4)
              : const EdgeInsets.only(right: 0),
          // padding: EdgeInsets.symmetric( vertical: 4),
          //margin:
              //EdgeInsets.only(top: KSize.getHeight(context, widget.topMargin)),
          decoration: BoxDecoration(
            color: KColor.transparent,
            
            border: Border.all(
              color: widget.errorMessage == null
                  ? KColor.transparent
                  : widget.errorMessage!.isEmpty
                      ? KColor.transparent
                      : KColor.red,
              width: 0.7,
              style: widget.errorMessage == null || widget.errorMessage!.isEmpty
                  ? BorderStyle.none
                  : BorderStyle.solid,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
          ),
          child: Transform.translate(
            offset: Offset(0,KSize.getHeight(context, -4)),
            child: TextFormField(
              validator: (String? value) {
                setState(() {
                  widget.errorMessage = widget.validator!(value)!;
                });
                return widget.errorMessage!.isNotEmpty ? '' : null;
              },
              initialValue: widget.initialValue,
              inputFormatters: widget.inputFormatters ?? [],
              controller: widget.controller,
              readOnly: widget.isReadOnly,
              
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              cursorColor: KColor.grey,
              keyboardType: widget.textInputType,
              style: widget.textStyle ?? KTextStyle.bodyText1.copyWith(
                  color: widget.textColor ?? KColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              obscureText: widget.isPasswordField ? _obscureText : false,
              textAlignVertical: TextAlignVertical.center,
              textAlign: widget.textAlign,
              autofocus: widget.autofocus,
          
              decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                hintStyle: KTextStyle.bodyText2.copyWith(
                  color: widget.hintColor ?? KColor.black.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  
                ),
                errorStyle: TextStyle(color: KColor.red),
                border: widget.inputBorder,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    
                    
                    color:MyApp.themeNotifier.value == ThemeMode.dark? KColor.textFieldUnderlineColorDark: KColor.grey300!),
                ),
                prefixIcon: widget.hasPrefixIcon
                    ? Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: widget.prefixIcon)
                    : Container(width: 0),
                prefixIconConstraints:
                    BoxConstraints(minHeight: widget.hasPrefixIcon ? 21 : 0),
                suffixIcon: widget.isPasswordField
                    ? obscureText()
                    : widget.isClearableField
                        ? clearField()
                        : widget.suffixIcon != null
                            ? InkWell(
                                onTap: widget.suffixCallbackFunction,
                                child: widget.suffixIcon)
                            : null,
              ),
              onTap: widget.onTap,
               
              onChanged: (val) {
                if (val != '') {
                  if (!_isClearableText) {
                    setState(() {
                      _isClearableText = true;
                    });
                  } else if (widget.errorMessage != null) {
                    setState(() {
                      widget.errorMessage = null;
                    });
                  }
                } else {
                  setState(() {
                    _isClearableText = false;
                  });
                }
          
                /// Search query
                if (widget.callBack) {
                  widget.callBackFunction!(val);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector obscureText() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      child: Icon(
        /// Based on password visibility state choose the icon
        _obscureText ? Icons.visibility : Icons.visibility_off,
        size: 18.0,
        color: MyApp.themeNotifier.value == ThemeMode.dark? KColor.white: KColor.black,
      ),
    );
  }

  GestureDetector clearField() {
    return GestureDetector(
      onTap: () {
        widget.controller!.clear();
        setState(() {
          _isClearableText = false;
        });
        if (widget.suffixCallback) {
          widget.suffixCallbackFunction!();
        }
      },
      child: Icon(
        Icons.cancel,
        color: _isClearableText ? KColor.black54 : KColor.transparent,
        size: 16.0,
      ),
    );
  }
}
