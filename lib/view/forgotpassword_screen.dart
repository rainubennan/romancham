// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ott/view/otpscreen.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotpasswordScreenState createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black.withOpacity(.87),
          title: const Text(
            'Forgot Password',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ott_bg2.png'),
                  fit: BoxFit.cover),
              color: Colors.transparent,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
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
                                hintText: 'Email or Phone Number'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.height * .08,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OTPVerificationScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: const Text(
                            'Send',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            )));
  }
}
