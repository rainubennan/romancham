import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Transaction History',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600),
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
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Text('Your Membership',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFBB2525)),
                child: ListTile(
                  title: Text(
                    'Plan',
                    style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(fontSize: 14, color: Colors.white)),
                  ),
                  subtitle: Text(
                    '\$149/Month',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Text('Next Billing date',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14, color: Color(0xFFBB2525)))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Text('3 December 2023',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14, color: Colors.white, height: 2))),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Divider(color: Colors.white),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '03/11/23',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBB2525))),
                      ),
                      Text('\$149',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)))
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Text('Streaming Service\n03/11/23-02/12/23',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            height: 2))),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'assets/images/upipayment.png',
                ),
                title: Text(
                  'A....@okaxis',
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Row(
                    children: [
                      Text(
                        '\$129.27',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      Text('  (+\$22.73 IGST)',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white38)))
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Divider(color: Colors.white),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1)
            ],
          ),
        ),
      ),
    );
  }
}
