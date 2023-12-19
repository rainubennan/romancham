// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieScroll extends StatelessWidget {
  List<String> thumbnails = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png'
  ];

  List<String> titles = [
    'Go where The Love Is \nPart 2',
    'Keep Calm \nPart 2',
    'Electro Music Fest \nPart 2',
    'Love with No Limits \nPart 2',
    'Prom 2021 is here \nPart 2',
  ];

  List<String> subtitles = [
    '33m',
    '30m',
    '25m',
    '25m',
    '30m',
  ];

  MovieScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      height: 250,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 32, right: 12),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 140,
                  width: 100,
                  child: Image.asset(
                    thumbnails[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width * 0.244,
                  child: Text(
                    titles[index],
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        height: 1.8,
                      ),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.244,
                  child: Text(
                    subtitles[index],
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        height: 1.8,
                      ),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
