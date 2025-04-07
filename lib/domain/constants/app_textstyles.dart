import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/widgets/utility_widgets/layout_helper.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle h1(BuildContext context) => TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 28.asp : 14.asp,
  );

  static TextStyle h2 (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 14.asp,
  );

  static TextStyle h3 (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h4 (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 20.asp,
  );

  static TextStyle h5 (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle body1Regular (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 12.asp : 8.asp,
  );

  static TextStyle body2Regular (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize:context.isMobile ? 14.asp : 8.asp,
  );

  static TextStyle body3Regular (BuildContext context) =>  TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );
}