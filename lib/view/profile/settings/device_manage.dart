import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceManage extends StatelessWidget {
  const DeviceManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Device Management'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * .1,
            ),
            Container(
                width: MediaQuery.of(context).size.width * .85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF373535)),
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const Icon(Icons.phone_android_sharp,
                      size: 40, color: Colors.white),
                  title: Text('HD1901',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white)),
                  subtitle: Text('Last used : 20 Oct 2023',
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Colors.white)),
                )),
          ],
        ),
      ),
    );
  }
}
