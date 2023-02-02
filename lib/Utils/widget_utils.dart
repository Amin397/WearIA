import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Consts/measures.dart';


class WidgetUtils{


  static Widget textField({
    required double width,
    required double height,
    required String hint,
    Widget suffix = const SizedBox(),
    Widget prefix = const SizedBox(),
    bool enable = true,
    required TextEditingController controller,
    required TextStyle textStyle,
    EdgeInsets margin = EdgeInsets.zero,
    EdgeInsets padding = EdgeInsets.zero,
    TextAlign textAlign = TextAlign.left,
    TextInputType inputType = TextInputType.text,
    bool autoFocus = false,
    bool obscureText = false,
  }) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        style: textStyle,
        enabled: enable,
        textAlign: textAlign,
        keyboardType: inputType,
        autofocus: autoFocus,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          // border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 12.0,
            color: textHintColor,
            fontFamily: 'xKoodak',
          ),
          enabled: enable,
          suffix: suffix,
          prefix: prefix,
        ),
      ),
    );
  }

}