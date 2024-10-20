import 'package:circle_sync/core/themes/text_styles/font_weight_helper.dart';
import 'package:flutter/material.dart';

class TextStyles {
 
  static const TextStyle font20SemiBold = TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'poppins',
    fontSize: 20,
    fontWeight: FontWeightHelper.semiBold,
  );

  static const TextStyle font16Medium = TextStyle(
   color: Color(0xFF000000),
    fontFamily: 'poppins',
    fontSize: 16,
    fontWeight: FontWeightHelper.medium
  );

  static const TextStyle font18Semibold= TextStyle(
   color: Color(0xFF111111),
    fontFamily: 'poppins',
    fontSize: 18,
    fontWeight: FontWeightHelper.semiBold
  );

  static const TextStyle font14Medium = TextStyle(
   color: Color(0xFF111111),
    fontFamily: 'poppins',
    fontSize: 14,
    fontWeight: FontWeightHelper.medium
  );
}
