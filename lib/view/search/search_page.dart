import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'trend_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Search bar ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFFBB2525), width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                          border: InputBorder.none,
                          hintText: 'Search Here',
                          hintStyle: GoogleFonts.poppins()),
                    ),
                  ),
                ),
              ),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Malayalam ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    'Malayalam',
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              MovieScroll(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Hindi ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    'Hindi',
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              MovieScroll(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Tamil ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    'Tamil',
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              MovieScroll(),
              // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ English ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    'English',
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              MovieScroll(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
