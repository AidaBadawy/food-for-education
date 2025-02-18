import 'package:flutter/material.dart';
import 'package:food_for_education/ui/common/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PoppinsText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextStyle style;
  final TextAlign alignment;
  final Color textColor;
  final int? maxLine;

  PoppinsText.thin(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w100,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.extraLight(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w200,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.light(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w300,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.regular(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w400,
          color: textColor,
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        alignment = align,
        super(key: key);

  PoppinsText.medium(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w500,
          color: textColor,
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        alignment = align,
        super(key: key);

  PoppinsText.semiBold(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.bold(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.extraBold(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 5})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w800,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  PoppinsText.black(this.text, this.fontSize, this.textColor,
      {Key? key, TextAlign align = TextAlign.start, this.maxLine = 0})
      : style = GoogleFonts.poppins(
          fontSize: setFontSize(fontSize),
          fontWeight: FontWeight.w900,
          color: textColor,
        ),
        alignment = align,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //     future: gt.trSimply(text, "en", 'en'),
    //     builder: (context, snapshot) {
    //       print(snapshot.data);
    //       return Text(
    //         snapshot.data!,
    //         style: style,
    //         textAlign: alignment,
    //       );
    //     });
    return Text(
      text,
      maxLines: maxLine,
      style: style,
      textAlign: alignment,
    );
  }
}

//Poppins thin
TextStyle poppinsThinFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w100,
  color: kcPrimaryColor,
);

//Poppins regular
TextStyle poppinsFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: kcPrimaryColor,
);

//Poppins medium
TextStyle poppinsMediumFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: kcPrimaryColor,
);

//Poppins semi bold
TextStyle poppinsSemiBoldFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w600,
  color: kcPrimaryColor,
);

//Poppins bold
TextStyle poppinsBoldFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
  color: kcPrimaryColor,
);

//Poppins black
TextStyle poppinsBlackFonts = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w900,
  color: kcPrimaryColor,
);

double setFontSize(font) {
  double fontSize = 6;

  switch (font) {
    case 6:
      fontSize = 6.sp;

      break;
    case 9:
      fontSize = 7.sp;

      break;
    case 10:
      fontSize = 7.7.sp;

      break;
    case 11:
      fontSize = 8.4.sp;

      break;
    case 12:
      fontSize = 9.2.sp;

      break;

    case 13:
      fontSize = 9.9.sp;

      break;

    case 14:
      fontSize = 10.7.sp;

      break;
    case 16:
      fontSize = 12.2.sp;

      break;
    case 18:
      fontSize = 13.7.sp;

      break;

    case 20:
      fontSize = 15.3.sp;

      break;

    case 24:
      fontSize = 18.4.sp;

      break;

    case 26:
      fontSize = 20.sp;

      break;
    case 30:
      fontSize = 24.sp;

      break;
    default:
  }

  return fontSize;
}
