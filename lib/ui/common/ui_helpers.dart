import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

double tinySizerHeight = 0.8.h;
double tinySizerWidth = 1.3.w;
double smallSizerHeight = 1.47.h;
double smallSizerWidth = 2.6.w;
double mediumSizerHeight = 3.7.h;
double mediumSizerWidth = 6.w;
double largeSizerHeight = 7.4.h;
double largeSizerWidth = 12.w;
double massiveSizer = 17.5.h;

Widget horizontalSpaceTiny = SizedBox(width: tinySizerWidth);
Widget horizontalSpaceSmall = SizedBox(width: smallSizerWidth);
Widget horizontalSpaceMedium = SizedBox(width: mediumSizerWidth);
Widget horizontalSpaceLarge = SizedBox(width: largeSizerWidth);

//SizerVertical
Widget verticalSpaceTiny = SizedBox(height: tinySizerHeight);
Widget verticalSpaceSmall = SizedBox(height: smallSizerHeight);
Widget verticalSpaceMedium = SizedBox(height: mediumSizerHeight);
Widget verticalSpaceLarge = SizedBox(height: largeSizerHeight);
Widget verticalSpaceMassive = SizedBox(height: massiveSizer);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}
