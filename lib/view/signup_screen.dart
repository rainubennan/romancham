// ignore_for_file: library_private_types_in_public_api

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/login_screen.dart';

import 'datepicker_dropdown.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // bool isOlder = false;
  void signUp() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.red.shade900),
              ),
              insetPadding: EdgeInsets.zero,
              title: Center(
                child: Icon(
                  Icons.security,
                  color: Colors.red.shade900,
                  size: 100,
                ),
              ),
              content: SizedBox(
                width: double.infinity, // Expand to the maximum width
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Allow content to shrink
                  children: [
                    Text(
                      'Are you 18 or Older?',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        isOlder();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.red.shade900,
                        foregroundColor: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Yes',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'I am an adult',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'I am Just a Kid',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      );
  }
  void isOlder() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: AlertDialog(
              // backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.red.shade900)),
              insetPadding: EdgeInsets.zero,
              icon: Center(
                  child: Icon(
                Icons.security,
                color: Colors.red.shade900,
                size: 120,
              )),
              title: SizedBox(
                height: 70,
                width: 100,
                child: Center(
                  child: Text(
                    'Enter your Birthday',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                ),
              ),
              content: DropdownDatePicker(
                inputDecoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                isDropdownHideUnderline: true,
                isFormValidator: true,
                startYear: 1900,
                endYear: 2023,
                width: 10,
                // selectedYear: 2005,
                onChangedDay: (value) => debugPrint('onChangedDay: $value'),
                onChangedMonth: (value) => debugPrint('onChangedMonth: $value'),
                onChangedYear: (value) => debugPrint('onChangedYear: $value'),
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red.shade900, width: 2.0),
                ),
                showDay: true,
                locale: "en",
                hintDay: 'Day',
                hintMonth: 'Month',
                hintYear: 'Year',
              ),
              actions: [
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .09,
                    width: MediaQuery.of(context).size.width * .3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red.shade900),
                      child: const Text('Verify'),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ott_bg2.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      'Create',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Text(
                    'Your Account',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.face_outlined,
                              color: Colors.red[900],
                            ),
                            hintText: 'Full Name',
                            hintStyle: GoogleFonts.poppins()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.red[900],
                            ),
                            hintText: 'Email or Phone Number',
                            hintStyle: GoogleFonts.poppins()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.red[900],
                            ),
                            hintText: 'Enter Password',
                            hintStyle: GoogleFonts.poppins()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.red[900],
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: GoogleFonts.poppins()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    child: ElevatedButton(
                      onPressed: () {
                        signUp();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text('Sign Up',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.white),
                          )),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Text('Login',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(color: Colors.amber),
                            )),
                      )
                    ],
                  )
                ],
              ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
