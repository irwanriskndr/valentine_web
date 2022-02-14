import 'package:flutter/material.dart';
import 'package:flutter_valentine_greeting_web/responsive/web_4.dart';
import 'package:flutter_valentine_greeting_web/widget/word.dart';
import 'package:google_fonts/google_fonts.dart';

class WebScreen3 extends StatelessWidget {
  const WebScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Flexible(child: Container(), flex: 2),
              const WordCard(
                name: 'Valentine',
                word: 'Happy',
                isheader: true,
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 500),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebScreen4()),
                    );
                  },
                  child: Text('Next',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      )),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
