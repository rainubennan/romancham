import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/bottomNav_screen.dart';
import 'package:ott/view/forgotpassword_screen.dart';
import 'package:ott/view/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/ott_bg2.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
            // color: Colors.transparent,
          ),
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
            ),
            child: Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'to',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Your Account',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
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
                              Icons.account_circle_outlined,
                              color: Colors.red[900],
                            ),
                            hintText: 'Email or Phone Number',
                            hintStyle: GoogleFonts.poppins()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotpasswordScreen()));
                    },
                    child: Text('Forgot Password?',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.grey),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNav()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text('Login',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                          child: Divider(
                        color: Colors.white,
                        indent: 30,
                        endIndent: 30,
                      )),
                      Text(
                        'OR CONTINUE WITH',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Expanded(
                          child: Divider(
                        color: Colors.white,
                        indent: 30,
                        endIndent: 30,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                                height: 18,
                                image: AssetImage(
                                  'assets/images/google.png',
                                ))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.apple,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have account?',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.amber),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
