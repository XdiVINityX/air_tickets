import 'package:flutter/material.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {

  const AppTextTheme({
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.text1,
    this.text2,
    this.buttonText1,
    this.tabText,
  });
  final TextStyle? title1;
  final TextStyle? title2;
  final TextStyle? title3;
  final TextStyle? title4;
  final TextStyle? text1;
  final TextStyle? text2;
  final TextStyle? buttonText1;
  final TextStyle? tabText;

  const AppTextTheme.fallback()
      : this(
          title1: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 5.45,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          title2: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 6,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          title3: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 7.5,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          title4: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "SF Pro Display",
            height: 8.57,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          text1: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 7.5,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          text2: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 8.57,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          buttonText1: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 8.12,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          tabText: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            fontFamily: "SF Pro Display",
            height: 11,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
        );

  @override
  AppTextTheme copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? title4,
    TextStyle? text1,
    TextStyle? text2,
    TextStyle? buttonText1,
    TextStyle? tabText,
  }) {
    return AppTextTheme(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      title4: title4 ?? this.title4,
      text1: text1 ?? this.text1,
      text2: text2 ?? this.text2,
      buttonText1: buttonText1 ?? this.buttonText1,
      tabText: tabText ?? this.tabText,
    );
  }

  @override
  AppTextTheme lerp(AppTextTheme? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      title1: TextStyle.lerp(title1, other.title1, t),
      title2: TextStyle.lerp(title2, other.title2, t),
      title3: TextStyle.lerp(title3, other.title3, t),
      title4: TextStyle.lerp(title4, other.title4, t),
      text1: TextStyle.lerp(text1, other.text1, t),
      text2: TextStyle.lerp(text2, other.text2, t),
      buttonText1: TextStyle.lerp(buttonText1, other.buttonText1, t),
      tabText: TextStyle.lerp(tabText, other.tabText, t),
    );
  }
}
