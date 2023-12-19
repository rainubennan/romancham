import 'package:flutter/material.dart';
import 'package:ott/view/newPasswors_screen.dart';

class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  List<FocusNode>? _otpFocusNodes;
  List<TextEditingController>? _otpControllers;

  @override
  void initState() {
    super.initState();

    _otpFocusNodes = List.generate(6, (index) => FocusNode());
    _otpControllers = List.generate(
      6,
      (index) => TextEditingController(),
    );

    // Set up listeners for OTP fields
    for (int i = 0; i < _otpControllers!.length; i++) {
      _otpControllers![i].addListener(() {
        if (_otpControllers![i].text.isNotEmpty &&
            i < _otpControllers!.length - 1) {
          // Move focus to the next OTP field
          _otpFocusNodes![i + 1].requestFocus();
        } else if (_otpControllers![i].text.isEmpty && i > 0) {
          // Move focus to the previous OTP field when backspacing
          _otpFocusNodes![i - 1].requestFocus();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black.withOpacity(.87),
        title: const Text(
          'Enter Verification Code',
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => Container(
                        width: MediaQuery.of(context).size.width * .15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: _otpControllers![index],
                          focusNode: _otpFocusNodes![index],
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If you didn\'t receive a code!',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {},
                        child: const Text(
                          'Resend',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .08,
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement your OTP verification logic here
                        String enteredOTP = _otpControllers!
                            .map((controller) => controller.text)
                            .join();
                        print('Entered OTP: $enteredOTP');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NewPassworsScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text(
                        'Verify OTP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
