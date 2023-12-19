// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAvatar extends StatefulWidget {
  const SelectAvatar({Key? key}) : super(key: key);

  @override
  _SelectAvatarState createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  List avatra = [
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais',
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671159.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais',
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671140.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais',
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671132.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais',
    'https://img.freepik.com/free-psd/3d-rendering-avatar_23-2150833554.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais',
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671136.jpg?size=626&ext=jpg&ga=GA1.1.807727768.1667211451&semt=ais'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28282B),
        appBar: AppBar(
          title: Text(
            'Select Avatar',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: const Color(0xff28282B),
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10),
                    itemCount: avatra.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(avatra[index]))),
                      );
                    }),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .08,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text('Update',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.white),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
