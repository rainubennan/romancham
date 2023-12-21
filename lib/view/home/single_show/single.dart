// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/home/single_show/episode_scroll.dart';

class Single extends StatefulWidget {
  const Single({Key? key}) : super(key: key);

  @override
  _SingleState createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.red.shade900,
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.play_arrow, color: Colors.white),
              const SizedBox(width: 5),
              Text("Play", style: GoogleFonts.poppins(color: Colors.white, fontSize: 16))
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff28282B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/imagemain.png'),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red.shade900,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Fall in Love :',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Episode 2',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '7.2',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Drama',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Crime',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '30m',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(left: 10),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_download_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Episodes',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            EpisodeScroll(),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 0),
              child: Text(
                'About',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 40),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n",
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.white, height: 1.8),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 0),
              child: Text(
                'Cast',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/image1.png'),
                      ),
                      const SizedBox(height: 10),
                      Text('Amika', style: GoogleFonts.poppins(color: Colors.white)),
                      Text('Sahil', style: GoogleFonts.poppins(color: Colors.red.shade900)),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/image2.png'),
                      ),
                      const SizedBox(height: 10),
                      Text('Amika', style: GoogleFonts.poppins(color: Colors.white)),
                      Text('Sahil', style: GoogleFonts.poppins(color: Colors.red.shade900)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
