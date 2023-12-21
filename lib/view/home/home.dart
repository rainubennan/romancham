import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/home/trend.dart';


import 'movielist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SliderDisplay(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Malayalam ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  'Malayalam Series',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              MovieList(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Tamil ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  'Tamil Series',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              MovieList(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Hindi ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  'Hindi Series',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              MovieList(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ English ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  'English Series',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              MovieList(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
