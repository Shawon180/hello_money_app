import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const kPrimaryColor=Color(0xff00224F);
const kTitleColor = Color(0xff1e272e);
const kSubTitleColor = Color(0xff999999);
const kSecondlyColor=Color(0xff11325C);
const kBodyContainerColor=Color(0xff2A67B4);
const kSubSubTitleColor = Color(0xffC4C4C4);
const kWhite = Color(0xFFFFFFFF);
const kBorderColor = Color(0xFF7BA7E2);
final kTextStyle = GoogleFonts.inter(
  color: kTitleColor,
);
InputDecoration kInputDecoration =  InputDecoration(

hintStyle: kTextStyle.copyWith(color: kSubTitleColor),
  enabledBorder: const UnderlineInputBorder( //<-- SEE HERE
    borderSide: BorderSide(
        width: 1, color: kBorderColor),
  ),
  focusedBorder: const UnderlineInputBorder( //<-- SEE HERE
    borderSide: BorderSide(
        width: 1, color: kBorderColor),
  ),
fillColor: kWhite
);

