import 'package:flutter/material.dart';

import '../../Widgets/full_text_widget.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
          )
        ],
      ),
    );
  }
}
