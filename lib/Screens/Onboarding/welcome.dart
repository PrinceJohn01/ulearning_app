import 'package:flutter/material.dart';

import '../../Widgets/full_text_widget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              appOnboardingPage(
                  imagePath: "assets/reading.jpg",
                  title: "First Learning",
                  subtitle:
                      "Forget about the paper, now learning all in one place"),
              appOnboardingPage(
                  imagePath: "assets/images.jpg",
                  title: "Connect With Everyone",
                  subtitle:
                      "Always keep in touch with your tutor and friends. Let's get connected"),
              appOnboardingPage(
                imagePath: "assets/download.jpg",
                title: "Always Fascinated Learning",
                subtitle:
                    "Anywhere, anytime. The time is at your discretion. So study wherever you can",
              ),
            ],
          )
        ],
      ),
    );
  }
}
