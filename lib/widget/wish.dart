import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishingCard extends StatelessWidget {
  final String word;
  const WishingCard({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.gideonRoman(
        fontSize: 14,
        color: Colors.black,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            '$word',
            speed: const Duration(milliseconds: 200),
            textAlign: TextAlign.justify,
          ),
        ],
        repeatForever: false,
        isRepeatingAnimation: false,
      ),
    );
  }
}
