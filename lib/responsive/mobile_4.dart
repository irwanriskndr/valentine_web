import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valentine_greeting_web/widget/wish.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreen4 extends StatefulWidget {
  const MobileScreen4({Key? key}) : super(key: key);

  @override
  State<MobileScreen4> createState() => _MobileScreen4State();
}

class _MobileScreen4State extends State<MobileScreen4> {
  final urlImages = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Flexible(child: Container(), flex: 2),
                CarouselSlider.builder(
                  options: CarouselOptions(height: 300),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'The most cheerful person',
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.linear_scale_outlined,
                        color: Colors.black,
                      ),
                      Image.asset(
                        'assets/heart.png',
                        height: 68,
                        width: 61,
                      ),
                      const Icon(
                        Icons.linear_scale_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Container(
                    height: 150,
                    child: new WishingCard(
                      word:
                          'Hi Dilah, remember first time that we meet? I look at you, and guess what? I thing you\'re a special women that I ever seen. After that meet, I got more curious about you. And after our second meet, I realize that I\'m right. Last but not least, I hope, I can better to know you and hope a good things comes to us. I know it\'s to late to give you this, but hope you like it.',
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

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.grey,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
