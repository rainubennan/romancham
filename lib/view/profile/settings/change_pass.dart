import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: const Text('Change Password'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            const CircleAvatar(
                radius: 61,
                backgroundColor: Color(0xFF514F4F),
                child:
                    Icon(Icons.shield_outlined, color: Colors.white, size: 63)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width * .85,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Old Password',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xFF5A5757)),
                    prefixIcon:
                        const Icon(Icons.lock_outline, color: Colors.red),
                    suffixIcon: const Icon(Icons.visibility_outlined,
                        color: Color(0xFF646464))),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width * .85,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter new Password',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: const Color(0xFF5A5757)),
                    prefixIcon:
                        const Icon(Icons.lock_outline, color: Colors.red),
                    suffixIcon: const Icon(Icons.visibility_outlined,
                        color: Color(0xFF646464))),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width * .85,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Confirm new Password',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 15, color:const  Color(0xFF5A5757)),
                    prefixIcon:
                        const Icon(Icons.lock_outline, color: Colors.red),
                    suffixIcon: const Icon(Icons.visibility_outlined,
                        color: Color(0xFF646464))),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFBB2525)),
              width: MediaQuery.of(context).size.width * .85,
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Change Password',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.white))),
            )
          ]),
        ),
      ),
    );
  }
}
