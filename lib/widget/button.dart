import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      // Provide an optional curve to make the animation feel smoother.
      curve: Curves.fastOutSlowIn,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {},
        child: Text('Next',
            style: GoogleFonts.poppins(
              fontSize: 15,
            )),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
