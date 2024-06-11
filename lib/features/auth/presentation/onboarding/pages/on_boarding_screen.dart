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
  final PageController pageController = PageController(initialPage: 0);
  int theIndex = 0;

  @override
  void initState() {
    pageController.addListener(() {
      if (theIndex != pageController.page!.ceil()) {
        theIndex = pageController.page!.ceil();
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: contentList.length,
        itemBuilder: (_, i) {
          return PageViewerContent(
            height: height,
            index: i,
          );
        },
      ),
      floatingActionButton: OnBoardingCustomRow(
        pageController: pageController,
        index: theIndex,
      ),
    );
  }
}
