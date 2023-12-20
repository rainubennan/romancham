// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/home/single_show/single.dart';

class Malayalamlist extends StatefulWidget {
  const Malayalamlist({Key? key}) : super(key: key);

  @override
  _MalayalamlistState createState() => _MalayalamlistState();
}

class _MalayalamlistState extends State<Malayalamlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28282B),
        appBar: AppBar(
          backgroundColor: const Color(0xff28282B),
          foregroundColor: Colors.white,
          title: Text(
            'Malyayalam  Series',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Single()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .18,
                    width: MediaQuery.of(context).size.width * .15,
                    decoration: const BoxDecoration(color: Color(0xff373535)),
                    child: Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * .18,
                            width: MediaQuery.of(context).size.width * .2,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVBGF6OW7jmpk_ctoOucUFfIb2_JMxjwn_3A&usqp=CAUs')),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  'Go Where The Love Is',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Part 2',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Drama',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Crime',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '30m',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
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
            }));
  }
}
