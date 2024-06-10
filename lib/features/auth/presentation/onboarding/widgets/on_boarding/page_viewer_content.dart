import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'model/on_boarding_content.dart';

// ignore: must_be_immutable
class PageViewerContent extends StatelessWidget {
  PageViewerContent({super.key, required this.height, required this.index});

  final double height;
  int index;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60.h , right: 25.w , left: 25.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Center(
                  child: Image.asset(
                    contentList[index].image ?? "",
                    fit: BoxFit.contain,
                    width: width * .55,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Flexible(
                    child: Text(
                      contentList[index].text ?? "",
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              contentList[index].widget ,
              SizedBox(height: height*.15,)
            ],
          ),
        ),
      ],
    );
  }
}
