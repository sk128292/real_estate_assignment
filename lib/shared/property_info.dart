import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PropertyInfo extends StatelessWidget {
  /// Create a instance of [PropertyInfo].
  const PropertyInfo({
    super.key,
    required this.image,
    required this.buttonText,
    this.height,
    this.width,
    this.buttonPadding,
  });

  /// Imageto show in the background
  final String image;

  /// Container width
  final double? width;

  /// Container height
  final double? height;

  /// Button text
  final String buttonText;

  /// button horizontal padding
  final double? buttonPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 200,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: AnimationConfiguration.synchronized(
            child: SlideAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              horizontalOffset: MediaQuery.of(context).size.width,
              duration: const Duration(seconds: 3),
              child: Container(
                height: 50,
                margin: EdgeInsets.all(buttonPadding ?? 16),
                decoration: BoxDecoration(
                  color: const Color(0xffd5c4b6).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(buttonText),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
