import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:real_estate_assignment/shared/property_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfff8f5f1),
            Color(0xFFf7bc76),
          ],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: AnimationLimiter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(seconds: 2),
                          childAnimationBuilder: (widget) => ScaleAnimation(
                            child: widget,
                          ),
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Colors.white,
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/pin.png',
                                      width: 20,
                                      height: 20,
                                      color: const Color(0xffb4a793),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'Saint Petersburg',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xffb4a793),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFf2991a),
                              foregroundImage: AssetImage(
                                'assets/images/profile_image.png',
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const AnimationConfiguration.synchronized(
                        child: FadeInAnimation(
                          curve: Curves.easeIn,
                          duration: Duration(seconds: 2),
                          child: Text(
                            'Hi, Marina',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xffb4a793),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const AnimationConfiguration.synchronized(
                        child: FadeInAnimation(
                          curve: Curves.easeIn,
                          duration: Duration(seconds: 2),
                          child: Text(
                            'let\'s select your perfect place',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 2),
                          childAnimationBuilder: (widget) => ScaleAnimation(
                            child: widget,
                          ),
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              height: MediaQuery.of(context).size.width / 2.22,
                              width: MediaQuery.of(context).size.width / 2.22,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffc9e12),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'BUY',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Countup(
                                    begin: 0,
                                    end: 1034,
                                    separator: ' ',
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    style: const TextStyle(
                                      fontSize: 45,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Offers',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              height: MediaQuery.of(context).size.width / 2.22,
                              width: MediaQuery.of(context).size.width / 2.22,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'RENT',
                                    style: TextStyle(
                                      color: Color(0xffa5957e),
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Countup(
                                    begin: 0,
                                    end: 2212,
                                    separator: ' ',
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    style: const TextStyle(
                                      fontSize: 45,
                                      color: Color(0xffa5957e),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Offers',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffa5957e),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AnimationConfiguration.synchronized(
                  child: SlideAnimation(
                    verticalOffset: 250,
                    duration: const Duration(milliseconds: 1200),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          const PropertyInfo(
                            image: 'assets/images/image1.jpg',
                            buttonText: 'Gladkova St., 25',
                          ),
                          Row(
                            children: [
                              PropertyInfo(
                                height: MediaQuery.of(context).size.width / 1.4,
                                width: MediaQuery.of(context).size.width / 2.2,
                                image: 'assets/images/image4.jpg',
                                buttonText: 'Gubina St.,11',
                                buttonPadding: 8,
                              ),
                              Column(
                                children: [
                                  PropertyInfo(
                                    height:
                                        MediaQuery.of(context).size.width / 2.9,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    image: 'assets/images/image2.jpg',
                                    buttonText: 'Trefuleva St.,43',
                                    buttonPadding: 8,
                                  ),
                                  PropertyInfo(
                                    height:
                                        MediaQuery.of(context).size.width / 2.9,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    image: 'assets/images/image3.jpeg',
                                    buttonText: 'Sedova St.,22',
                                    buttonPadding: 8,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
