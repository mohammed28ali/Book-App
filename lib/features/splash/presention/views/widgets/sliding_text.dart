
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
    required this.text,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;
  final String text;


  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position:slidingAnimation ,
            child:Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          );
        }
    );
  }
}
