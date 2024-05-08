import 'package:air_tickets/core/colors/color_palette.dart';
import 'package:flutter/material.dart';

class AppColorScheme extends ThemeExtension<AppColorScheme> {
  AppColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.surfaceSecondary,
    required this.onSurface,
    required this.background,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.onBackground,
    required this.onBackgroundSecondary,
    required this.danger,
    required this.dangerSecondary,
    required this.onDanger,
    required this.textField,
    required this.textFieldLabel,
    required this.textFieldHelper,
    required this.frameTextFieldSecondary,
    required this.inactive,
    required this.positive,
    required this.onPositive,
    required this.skeletonPrimary,
    required this.skeletonOnPrimary,
    required this.skeletonSecondary,
    required this.skeletonTertiary,
    required this.tetradicBackground,
    required this.subtitle,
    required this.divider,
    required this.icons,
    required this.primaryText,
  });

  AppColorScheme.dark()
      : primary = DarkColorPalette.darkCharcoal,
        onPrimary = DarkColorPalette.white,
        secondary = DarkColorPalette.arsenic,
        onSecondary = DarkColorPalette.white,
        surface = DarkColorPalette.white,
        surfaceSecondary = DarkColorPalette.white,
        onSurface = DarkColorPalette.white,
        background = DarkColorPalette.smokyBlack,
        backgroundSecondary = DarkColorPalette.white,
        backgroundTertiary = DarkColorPalette.white,
        onBackground = DarkColorPalette.white,
        onBackgroundSecondary = DarkColorPalette.white,
        danger = DarkColorPalette.white,
        dangerSecondary = DarkColorPalette.white,
        onDanger = DarkColorPalette.white,
        textField = DarkColorPalette.white,
        textFieldLabel = DarkColorPalette.white,
        textFieldHelper = DarkColorPalette.white,
        frameTextFieldSecondary = DarkColorPalette.white,
        inactive = DarkColorPalette.quickSilver,
        positive = DarkColorPalette.white,
        onPositive = DarkColorPalette.white,
        skeletonPrimary = DarkColorPalette.white.withOpacity(0.06),
        skeletonOnPrimary = DarkColorPalette.white,
        skeletonSecondary = DarkColorPalette.white,
        skeletonTertiary = DarkColorPalette.white,
        tetradicBackground = DarkColorPalette.denim,
        subtitle = DarkColorPalette.denim,
        divider = DarkColorPalette.graniteGray,
        icons = DarkColorPalette.quickSilver,
        primaryText = DarkColorPalette.white;

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color surface;
  final Color surfaceSecondary;
  final Color onSurface;
  final Color background;
  final Color backgroundSecondary;
  final Color backgroundTertiary;
  final Color tetradicBackground;
  final Color onBackground;
  final Color onBackgroundSecondary;
  final Color danger;
  final Color dangerSecondary;
  final Color onDanger;
  final Color textField;
  final Color textFieldLabel;
  final Color textFieldHelper;
  final Color frameTextFieldSecondary;
  final Color inactive;
  final Color positive;
  final Color onPositive;
  final Color skeletonPrimary;
  final Color skeletonOnPrimary;
  final Color skeletonSecondary;
  final Color skeletonTertiary;
  final Color subtitle;
  final Color divider;
  final Color icons;
  final Color primaryText;

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? surfaceSecondary,
    Color? onSurface,
    Color? background,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? onBackground,
    Color? onBackgroundSecondary,
    Color? danger,
    Color? dangerSecondary,
    Color? onDanger,
    Color? textField,
    Color? textFieldLabel,
    Color? textFieldHelper,
    Color? frameTextFieldSecondary,
    Color? inactive,
    Color? positive,
    Color? onPositive,
    Color? skeletonPrimary,
    Color? skeletonOnPrimary,
    Color? skeletonSecondary,
    Color? skeletonTertiary,
    Color? tetradicBackground,
    Color? subtitle,
    Color? divider,
    Color? icons,
    Color? primaryText,
  }) =>
      AppColorScheme._(
        primary: primary ?? this.primary,
        onPrimary: onPrimary ?? this.onPrimary,
        secondary: secondary ?? this.secondary,
        onSecondary: onSecondary ?? this.onSecondary,
        surface: surface ?? this.surface,
        surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
        onSurface: onSurface ?? this.onSurface,
        background: background ?? this.background,
        onBackground: onBackground ?? this.onBackground,
        danger: danger ?? this.danger,
        dangerSecondary: dangerSecondary ?? this.dangerSecondary,
        onDanger: onDanger ?? this.onDanger,
        backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
        onBackgroundSecondary:
            onBackgroundSecondary ?? this.onBackgroundSecondary,
        backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
        textField: textField ?? this.textField,
        textFieldLabel: textFieldLabel ?? this.textFieldLabel,
        textFieldHelper: textFieldHelper ?? this.textFieldHelper,
        frameTextFieldSecondary:
            frameTextFieldSecondary ?? this.frameTextFieldSecondary,
        inactive: inactive ?? this.inactive,
        positive: positive ?? this.positive,
        onPositive: onPositive ?? this.onPositive,
        skeletonPrimary: skeletonPrimary ?? this.skeletonPrimary,
        skeletonOnPrimary: skeletonOnPrimary ?? this.skeletonOnPrimary,
        skeletonSecondary: skeletonSecondary ?? this.skeletonSecondary,
        skeletonTertiary: skeletonTertiary ?? this.skeletonTertiary,
        tetradicBackground: tetradicBackground ?? this.tetradicBackground,
        subtitle: subtitle ?? this.subtitle,
        divider: divider ?? this.divider,
        icons: icons ?? this.icons,
        primaryText: primaryText ?? this.primaryText,
      );

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }
    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary:
          Color.lerp(surfaceSecondary, other.surfaceSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onBackgroundSecondary:
          Color.lerp(onBackgroundSecondary, other.onBackgroundSecondary, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSecondary: Color.lerp(dangerSecondary, other.dangerSecondary, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      textFieldLabel: Color.lerp(textFieldLabel, other.textFieldLabel, t)!,
      textFieldHelper: Color.lerp(textFieldHelper, other.textFieldHelper, t)!,
      frameTextFieldSecondary: Color.lerp(
        frameTextFieldSecondary,
        other.frameTextFieldSecondary,
        t,
      )!,
      inactive: Color.lerp(inactive, other.inactive, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      onPositive: Color.lerp(onPositive, other.onPositive, t)!,
      skeletonPrimary: Color.lerp(skeletonPrimary, other.skeletonPrimary, t)!,
      skeletonOnPrimary:
          Color.lerp(skeletonOnPrimary, other.skeletonOnPrimary, t)!,
      skeletonSecondary:
          Color.lerp(skeletonSecondary, other.skeletonSecondary, t)!,
      skeletonTertiary:
          Color.lerp(skeletonTertiary, other.skeletonTertiary, t)!,
      tetradicBackground:
          Color.lerp(tetradicBackground, other.tetradicBackground, t)!,
      subtitle: Color.lerp(tetradicBackground, other.tetradicBackground, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      icons: Color.lerp(icons, other.icons, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
    );
  }

  /// Returns [AppColorScheme] from [context].
  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
