import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportProblem extends StatelessWidget {
  const ReportProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Report a Problem'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .85,
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xFF514F4F),
                  child:
                      Icon(Icons.mail_outline, color: Colors.white, size: 44)),
              Text(
                'abcdefg@gmail.com',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 12, color: Colors.white, height: 3)),
              ),
              Text(
                'Fill your information below',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 3)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Text('Enter your details',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11, color: Colors.white))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Name',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF5A5757)),
                    ),
                    prefixIcon: const Icon(Icons.person_2_outlined,
                        color: Color(0xFFBB2525)),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Mail ID',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF5A5757)),
                    ),
                    prefixIcon: const Icon(Icons.mail_outline,
                        color: Color(0xFFBB2525)),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    color: const Color(0xFF373535),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      padding: const EdgeInsets.only(left: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '+91',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xFF5A5757)),
                          ),
                        ),
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: VerticalDivider(
                        color: Color(0xFFBB2525),
                        thickness: 2.0,
                        width: 5,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xFF5A5757)),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SizedBox(
                height: 120,
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter description',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFF5A5757)),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF373535)),
                      child: const Icon(Icons.add_circle_outline_outlined,
                          color: Color(0xFFBB2525)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Add image',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF5A5757)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF373535),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Issue Type',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF5A5757)),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFBB2525)),
                width: MediaQuery.of(context).size.width * .85,
                child: TextButton(
                  onPressed: () {},
                  child: Text('SUBMIT',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.white),
                      )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ]),
          ),
        ),
      ),
    );
  }
}
