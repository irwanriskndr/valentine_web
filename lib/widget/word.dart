import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valentine_greeting_web/utils/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class WordCard extends StatelessWidget {
  final String name;
  final String word;
  final bool isheader;
  const WordCard(
      {Key? key,
      required this.name,
      required this.word,
      required this.isheader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.poppins(
        textStyle: isheader ? header : subHeader,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText(
            '$word $name',
            rotateOut: false,
          ),
        ],
        isRepeatingAnimation: false,
        repeatForever: false,
      ),
    );
  }
}
