// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/home/malayalamlist.dart';

class MovieList extends StatelessWidget {
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

  MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.85,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 20.0, mainAxisExtent: 220),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          if (index < 5) {
            // Render movie details
            return SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 110,
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
                          fontSize: 9,
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
          } else {
            // Render arrow button
            return Column(
              children: [
                SizedBox(
                  height: 140,
                  width: 100,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xFF615E5E), width: 1.0)),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.transparent,
                        child: IconButton(
                          icon: const Icon(Icons.double_arrow,
                              size: 30, color: Color(0xFF615E5E)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Malayalamlist()));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
