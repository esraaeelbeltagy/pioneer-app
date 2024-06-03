import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'model/on_boarding_content.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.currentValue,
  });
  final int currentValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        contentList.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 500),
            width: index == currentValue ? 30 : 10,
            height: 10,
            decoration: BoxDecoration(
              color: index == currentValue ? AppColors.primaryColor : AppColors.dot,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
