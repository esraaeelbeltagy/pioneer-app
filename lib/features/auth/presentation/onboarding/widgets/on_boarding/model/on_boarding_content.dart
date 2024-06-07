import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

import '../../../../../../../core/utils/images.dart';
import '../form_1_widget.dart';
import '../form_2_widget.dart';
import '../form_3_widget.dart';
import '../form_4_widget.dart';

class OnBoardingContent {
  String? image;
  String? text;
  Widget widget;

  OnBoardingContent({
    this.image,
    this.text,
    required this.widget,
  });
}

List<OnBoardingContent> contentList = [
  OnBoardingContent(
    image: AppImages.onBoarding1,
    text: AppStrings.onBoarding1,
    widget: const Form1Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding2,
    text: AppStrings.onBoarding2,
     widget: const Form1Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding3,
    text: AppStrings.onBoarding3,
     widget: const Form4Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding4,
    text: AppStrings.onBoarding4,
     widget: const Form2Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding5,
    text: AppStrings.onBoarding5,
    widget: const Form3Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding6,
    text: AppStrings.onBoarding6,
    widget: const Form4Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding7,
    text: AppStrings.onBoarding7,
    widget: const Form4Widget(),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding8,
    text: AppStrings.onBoarding8,
     widget:  SizedBox(
      height: 45.h,
     ),
  ),
  OnBoardingContent(
    image: AppImages.onBoarding9,
    text: AppStrings.onBoarding9,
     widget: const Form1Widget(),
  ),

];
