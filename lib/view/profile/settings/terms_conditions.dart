import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        title: const Text('Terms and Conditions'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n",
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.white, height: 1.8)),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n",
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.white, height: 1.8)),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,  when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n",
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.white, height: 1.8)),
          ],
        ),
      ),
    );
  }
}
