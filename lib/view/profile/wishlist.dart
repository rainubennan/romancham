// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28282B),
        appBar: AppBar(
          backgroundColor: const Color(0xff28282B),
          foregroundColor: Colors.white,
          title: Text(
            'My Watchlist',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
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
                            const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                                Text(
                                  '30M',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey, fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
