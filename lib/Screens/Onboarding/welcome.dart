import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Widgets/full_text_widget.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({Key? key}) : super(key: key);

  final PageController _controller = PageController();
  int dotsIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('my dots valule is $dotsIndex');
    final index = ref.watch(indexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                onPageChanged: (value) {
                  print('---my index value is $value');
                  dotsIndex = value;
                  ref.read(indexProvider.notifier).state = value;
                },
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  appOnboardingPage(_controller,
                      imagePath: "assets/reading.jpg",
                      title: "First Learning",
                      subtitle:
                          "Forget about the paper, now learning all in one place",
                      index: 1),
                  appOnboardingPage(_controller,
                      imagePath: "assets/images.jpg",
                      title: "Connect With Everyone",
                      subtitle:
                          "Always keep in touch with your tutor and friends. Let's get connected",
                      index: 2),
                  appOnboardingPage(
                    _controller,
                    imagePath: "assets/download.jpg",
                    title: "Always Fascinated Learning",
                    subtitle:
                        "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                    index: 3,
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
