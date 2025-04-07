import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle h1 = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: 28.asp,
  );

  static TextStyle h2 = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 14.asp,
  );

  static TextStyle h3 = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h4 = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 20.asp,
  );

  static TextStyle h5 = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle body1Regular = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 12.asp,
  );

  static TextStyle body2Regular = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 14.asp,
  );

  static TextStyle body3Regular = TextStyle(
    fontFamily: AppStrings.fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );
}