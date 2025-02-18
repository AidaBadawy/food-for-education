import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff006d30),
      surfaceTint: Color(0xff006d30),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff55d075),
      onPrimaryContainer: Color(0xff003413),
      secondary: Color(0xff3c6844),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc0f1c3),
      onSecondaryContainer: Color(0xff275230),
      tertiary: Color(0xff00639c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff76beff),
      onTertiaryContainer: Color(0xff002e4c),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff4fbf0),
      onBackground: Color(0xff171d17),
      surface: Color(0xfff4fbf0),
      onSurface: Color(0xff171d17),
      surfaceVariant: Color(0xffd9e6d6),
      onSurfaceVariant: Color(0xff3e4a3e),
      outline: Color(0xff6e7a6d),
      outlineVariant: Color(0xffbdcaba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b322b),
      inverseOnSurface: Color(0xffecf3e8),
      inversePrimary: Color(0xff64de82),
      primaryFixed: Color(0xff81fb9b),
      onPrimaryFixed: Color(0xff00210a),
      primaryFixedDim: Color(0xff64de82),
      onPrimaryFixedVariant: Color(0xff005322),
      secondaryFixed: Color(0xffbeefc1),
      onSecondaryFixed: Color(0xff00210a),
      secondaryFixedDim: Color(0xffa2d2a6),
      onSecondaryFixedVariant: Color(0xff244f2e),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xff97cbff),
      onTertiaryFixedVariant: Color(0xff004a77),
      surfaceDim: Color(0xffd5dcd2),
      surfaceBright: Color(0xfff4fbf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff6eb),
      surfaceContainer: Color(0xffe9f0e5),
      surfaceContainerHigh: Color(0xffe3eadf),
      surfaceContainerHighest: Color(0xffdde5da),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004e20),
      surfaceTint: Color(0xff006d30),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00873d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff204b2a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff527f58),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004670),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff007abe),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fbf0),
      onBackground: Color(0xff171d17),
      surface: Color(0xfff4fbf0),
      onSurface: Color(0xff171d17),
      surfaceVariant: Color(0xffd9e6d6),
      onSurfaceVariant: Color(0xff3a463a),
      outline: Color(0xff566255),
      outlineVariant: Color(0xff717e70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b322b),
      inverseOnSurface: Color(0xffecf3e8),
      inversePrimary: Color(0xff64de82),
      primaryFixed: Color(0xff00873d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006b2f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff527f58),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3a6541),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff007abe),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff006098),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dcd2),
      surfaceBright: Color(0xfff4fbf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff6eb),
      surfaceContainer: Color(0xffe9f0e5),
      surfaceContainerHigh: Color(0xffe3eadf),
      surfaceContainerHighest: Color(0xffdde5da),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00290e),
      surfaceTint: Color(0xff006d30),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004e20),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00290e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff204b2a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00243d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004670),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fbf0),
      onBackground: Color(0xff171d17),
      surface: Color(0xfff4fbf0),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffd9e6d6),
      onSurfaceVariant: Color(0xff1b271c),
      outline: Color(0xff3a463a),
      outlineVariant: Color(0xff3a463a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b322b),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffadffb8),
      primaryFixed: Color(0xff004e20),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003514),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff204b2a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff063416),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004670),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002f4e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dcd2),
      surfaceBright: Color(0xfff4fbf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff6eb),
      surfaceContainer: Color(0xffe9f0e5),
      surfaceContainerHigh: Color(0xffe3eadf),
      surfaceContainerHighest: Color(0xffdde5da),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6de789),
      surfaceTint: Color(0xff64de82),
      onPrimary: Color(0xff003916),
      primaryContainer: Color(0xff3fbc64),
      onPrimaryContainer: Color(0xff002109),
      secondary: Color(0xffa2d2a6),
      onSecondary: Color(0xff0b3819),
      secondaryContainer: Color(0xff1d4827),
      onSecondaryContainer: Color(0xffb0e1b3),
      tertiary: Color(0xffaad4ff),
      onTertiary: Color(0xff003354),
      tertiaryContainer: Color(0xff52adf7),
      onTertiaryContainer: Color(0xff001d33),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0e150f),
      onBackground: Color(0xffdde5da),
      surface: Color(0xff0e150f),
      onSurface: Color(0xffdde5da),
      surfaceVariant: Color(0xff3e4a3e),
      onSurfaceVariant: Color(0xffbdcaba),
      outline: Color(0xff879486),
      outlineVariant: Color(0xff3e4a3e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde5da),
      inverseOnSurface: Color(0xff2b322b),
      inversePrimary: Color(0xff006d30),
      primaryFixed: Color(0xff81fb9b),
      onPrimaryFixed: Color(0xff00210a),
      primaryFixedDim: Color(0xff64de82),
      onPrimaryFixedVariant: Color(0xff005322),
      secondaryFixed: Color(0xffbeefc1),
      onSecondaryFixed: Color(0xff00210a),
      secondaryFixedDim: Color(0xffa2d2a6),
      onSecondaryFixedVariant: Color(0xff244f2e),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xff97cbff),
      onTertiaryFixedVariant: Color(0xff004a77),
      surfaceDim: Color(0xff0e150f),
      surfaceBright: Color(0xff343b34),
      surfaceContainerLowest: Color(0xff09100a),
      surfaceContainerLow: Color(0xff171d17),
      surfaceContainer: Color(0xff1b211b),
      surfaceContainerHigh: Color(0xff252c25),
      surfaceContainerHighest: Color(0xff30372f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6de789),
      surfaceTint: Color(0xff64de82),
      onPrimary: Color(0xff002009),
      primaryContainer: Color(0xff3fbc64),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa6d7aa),
      onSecondary: Color(0xff001b07),
      secondaryContainer: Color(0xff6e9b73),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffaad4ff),
      onTertiary: Color(0xff001d32),
      tertiaryContainer: Color(0xff52adf7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e150f),
      onBackground: Color(0xffdde5da),
      surface: Color(0xff0e150f),
      onSurface: Color(0xfff6fdf2),
      surfaceVariant: Color(0xff3e4a3e),
      onSurfaceVariant: Color(0xffc1cebf),
      outline: Color(0xff99a698),
      outlineVariant: Color(0xff7a8779),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde5da),
      inverseOnSurface: Color(0xff252c25),
      inversePrimary: Color(0xff005423),
      primaryFixed: Color(0xff81fb9b),
      onPrimaryFixed: Color(0xff001505),
      primaryFixedDim: Color(0xff64de82),
      onPrimaryFixedVariant: Color(0xff004019),
      secondaryFixed: Color(0xffbeefc1),
      onSecondaryFixed: Color(0xff001505),
      secondaryFixedDim: Color(0xffa2d2a6),
      onSecondaryFixedVariant: Color(0xff123e1e),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001223),
      tertiaryFixedDim: Color(0xff97cbff),
      onTertiaryFixedVariant: Color(0xff00395d),
      surfaceDim: Color(0xff0e150f),
      surfaceBright: Color(0xff343b34),
      surfaceContainerLowest: Color(0xff09100a),
      surfaceContainerLow: Color(0xff171d17),
      surfaceContainer: Color(0xff1b211b),
      surfaceContainerHigh: Color(0xff252c25),
      surfaceContainerHighest: Color(0xff30372f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff0ffed),
      surfaceTint: Color(0xff64de82),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff68e386),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff0ffed),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa6d7aa),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffafaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa0cfff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e150f),
      onBackground: Color(0xffdde5da),
      surface: Color(0xff0e150f),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3e4a3e),
      onSurfaceVariant: Color(0xfff1ffee),
      outline: Color(0xffc1cebf),
      outlineVariant: Color(0xffc1cebf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde5da),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff003212),
      primaryFixed: Color(0xff8bffa2),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff68e386),
      onPrimaryFixedVariant: Color(0xff001b07),
      secondaryFixed: Color(0xffc2f3c5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa6d7aa),
      onSecondaryFixedVariant: Color(0xff001b07),
      tertiaryFixed: Color(0xffd6e9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa0cfff),
      onTertiaryFixedVariant: Color(0xff00182b),
      surfaceDim: Color(0xff0e150f),
      surfaceBright: Color(0xff343b34),
      surfaceContainerLowest: Color(0xff09100a),
      surfaceContainerLow: Color(0xff171d17),
      surfaceContainer: Color(0xff1b211b),
      surfaceContainerHigh: Color(0xff252c25),
      surfaceContainerHighest: Color(0xff30372f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
