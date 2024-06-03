import 'package:flutter/material.dart';

import 'package:pioneer_app/features/auth/presentation/onboarding/widgets/on_boarding/page_viewer_content.dart';

import '../widgets/on_boarding/on_boarding_custom_row.dart';
import '../widgets/on_boarding/model/on_boarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int theIndex =5;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        itemCount: contentList.length,
        itemBuilder: (_, i) {
          theIndex = i;
          return PageViewerContent(
            height: height,
            index: i,
          );
        },
      ),
      floatingActionButton:  OnBoardingCustomRow(index: theIndex,),
    
    );
  }
}
