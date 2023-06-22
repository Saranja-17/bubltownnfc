import 'package:bubltown_nfc/common/common_themed/themed_color.dart';
import 'package:flutter/material.dart';

class ThemedText {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w600;

  static Text h1Header(text, color, maxLine) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 96,
            fontWeight: light,
            letterSpacing: -1.5,
            color: color));
  }

  static Text h2Header(text, color, maxLine) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 60,
            fontWeight: light,
            letterSpacing: -0.5,
            color: color));
  }

  static Text h3Header(text, color, maxLine) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 48,
            fontWeight: regular,
            letterSpacing: 0,
            color: color));
  }

  static Text h4Header(
    text,
    color,
    maxLine, {
    FontWeight? fontWeight,
    bool crossText = false,
    double fontSize = 34.0,
    double? decorationThickness,
    textAlign,
  }) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: textAlign ?? textAlign,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.bold,
            letterSpacing: 0.25,
            color: color,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none,
            decorationThickness: 2.85));
  }

  static Text h5Header(
    text,
    color,
    maxLine, {
    textAlign,
    FontWeight fontWeight = regular,
    bool crossText = false,
  }) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: textAlign ?? textAlign,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 24,
            fontWeight: fontWeight,
            letterSpacing: 0,
            color: color,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none,
            decorationThickness: 2.85));
  }

  static Text h6Header(text, color, maxLine,
      {textAlign,
      fontWeight = bold,
      bool crossText = false,
      double? decorationThickness}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 20,
            fontWeight: fontWeight,
            letterSpacing: 0.15,
            color: color,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text boldTitle(text, color,
      {maxLine,
      textAlign,
      overflow = TextOverflow.ellipsis,
      fontWeight = bold,
      bool crossText = false,
      double fontSize = 17.0,
      double height = 1,
      double letterSpacing = 0.2}) {
    return Text(text,
        overflow: overflow,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            color: color,
            height: height,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text subtitle1(text, color, maxLine,
      {textAlign,
      fontWeight = bold,
      bool crossText = false,
      String fontFamily = ""}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: fontFamily != "" ? fontFamily : BrandTheme.brandFont,
            fontSize: 16,
            fontWeight: fontWeight,
            letterSpacing: 0.15,
            color: color,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text homeAddress(text, color, maxLine, {textAlign}) {
    return Text(text,
        overflow: TextOverflow.fade,
        softWrap: false,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 16,
            fontWeight: bold,
            letterSpacing: 0.15,
            color: color));
  }

  static Text subtitle2(text, color, maxLine,
      {textAlign,
      bool crossText = false,
      fontWeight = medium,
      double fontSize = 14.0,
      double? decorationThickness,
      bool underLine = false,
      double? height}) {
    return Text(text.toString(),
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: 0.1,
            color: color,
            height: height,
            decoration: crossText
                ? TextDecoration.lineThrough
                : underLine
                    ? TextDecoration.underline
                    : TextDecoration.none,
            decorationThickness: 2.85));
  }

  static Text subtitle2Bold(text, color, maxLine,
      {textAlign,
      bool crossText = false,
      double fontSize = 14.0,
      double? decorationThickness}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: bold,
            letterSpacing: 0.1,
            color: color,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text subtitle1Bold(text, color, maxLine,
      {textAlign, bool crossText = false}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 16,
            fontWeight: bold,
            letterSpacing: 0.1,
            color: color,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text body1(text, color, maxLine,
      {textAlign, double fontSize = 16.0, fontWeight = medium}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: 0.5,
            color: color));
  }

  static Text body2(text, color, maxLine,
      {textAlign,
      fontWeight = regular,
      fontFamily,
      crossText = false,
      double fontSize = 14.0}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
          fontFamily: fontFamily ?? BrandTheme.brandFont,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: 0.25,
          color: color,
          decoration:
              crossText ? TextDecoration.lineThrough : TextDecoration.none,
        ));
  }

  static Text body3(text, color, maxLine, {textAlign}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 10,
            fontWeight: medium,
            letterSpacing: 0.5,
            color: color));
  }

  static Text button(text, color, maxLine,
      {fontWeight = bold, double fontSize = 20.0}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: 0.7,
            color: color));
  }

  static Text caption(text, color, maxLine,
      {textAlign,
      bool crossText = false,
      double fontSize = 12.0,
      FontWeight fontWeight = regular,
      String fontFamily = ""}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: textAlign ?? textAlign,
        style: TextStyle(
            fontFamily: fontFamily != "" ? fontFamily : BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: 0.4,
            color: color,
            decorationThickness: 2.85,
            decoration:
                crossText ? TextDecoration.lineThrough : TextDecoration.none));
  }

  static Text captionBold(text, color, maxLine,
      {textAlign,
      fontWeight = bold,
      bool crossText = false,
      double fontSize = 12.0}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: textAlign ?? textAlign,
      style: TextStyle(
          fontFamily: BrandTheme.brandFont,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decorationThickness: 2.85,
          decoration:
              crossText ? TextDecoration.lineThrough : TextDecoration.none),
    );
  }

  static Text overline(text, color, maxLine,
      {fontWeight = bold, double fontSize = 10}) {
    return Text(text.toString(),
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: TextAlign.center, //.toUpperCase(),
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: fontSize,
            fontWeight: fontWeight,
            // letterSpacing: 1.0,
            color: color));
  }

  static Text captionLarge(text, color, maxLine,
      {textAlign,
      TextDecoration textDecoration = TextDecoration.none,
      fontWeight = bold}) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? textAlign,
        maxLines: maxLine,
        style: TextStyle(
            fontFamily: BrandTheme.brandFont,
            fontSize: 13,
            fontWeight: fontWeight,
            letterSpacing: 0.4,
            color: color,
            decoration: textDecoration));
  }

  static TextStyle bottomBtntext(context) {
    return TextStyle(
      color: BrandTheme.keyLight,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    );
  }
}

class CardMedium {
  // Card medium
  static double borderRadius = 8;
  static double boderwidth = 1;
  static double paddingMedium = 10.0;
}
