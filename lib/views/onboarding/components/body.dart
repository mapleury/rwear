import 'package:flutter/material.dart';
import 'package:my_app/data/onboarding_data.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/const.dart';
import 'package:my_app/views/onboarding/components/onboarding_contents.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  text: onBoardingData[index].text,
                  image: onBoardingData[index].image,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      onBoardingData.length,
                      (index) => _dotsIndicator(index: index),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      if (currentPage == onBoardingData.length - 1) {
                        Navigator.pushNamed(context, '/signup');
                      } else {
                        _pageController.animateToPage(
                          currentPage + 1,
                          duration: animationDuration,
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.black,
                      child: Icon(
                        currentPage == onBoardingData.length - 1
                            ? Icons.check
                            : Icons.arrow_forward,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _dotsIndicator({required int index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? Colors.black : secondaryColor,
      ),
      width: currentPage == index ? 20 : 7,
      height: 5,
      duration: animationDuration,
    );
  }
}
