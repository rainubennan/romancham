// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EpisodeScroll extends StatelessWidget {
  EpisodeScroll({Key? key}) : super(key: key);

  List<String> episodes = [
    'Episode 1',
    'Episode 2',
    'Episode 3',
    'Episode 4',
    'Episode 5',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30, right: 15, top: 10),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: episodes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.dstATop,
                      ),
                      image: const AssetImage('assets/images/imagemain.png'),
                    ),
                  ),
                  height: 100,
                  width: 200,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.red.shade900,
                      child: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  child: Text(
                    episodes[index],
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
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
