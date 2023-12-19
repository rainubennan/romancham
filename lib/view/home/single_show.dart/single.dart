// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Single extends StatefulWidget {
  const Single({Key? key}) : super(key: key);

  @override
  _SingleState createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28282B),
      // appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image2.png'))),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 350,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.white,
                          ))),
                  Center(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 25,
                          )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Keep Calm :',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Episode 2',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                      ),
                      Text(
                        '7.2',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Drama',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Crime',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        '30m',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                        size: 35,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Episodes',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              ),
            ),
            // ----------------------------------------Episodes--------------------------------------------------
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     Row(
            //       children: [
            //         //--------------1--------------------
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Container(
            //                 height: 100,
            //                 width: 250,
            //                 decoration: BoxDecoration(
            //                     color: Colors.black.withOpacity(.5),
            //                     image: DecorationImage(
            //                         fit: BoxFit.fill,
            //                         image:
            //                             AssetImage('assets/images/image2.png')),
            //                     borderRadius: BorderRadius.circular(8)),
            //                 child: Center(
            //                   child: CircleAvatar(
            //                     backgroundColor: Colors.red,
            //                     child: IconButton(
            //                         onPressed: () {},
            //                         icon: Icon(
            //                           Icons.play_arrow,
            //                           color: Colors.white,
            //                         )),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(top: 5, left: 10),
            //               child: Row(
            //                 children: [
            //                   Text(
            //                     'Keep Calm : ',
            //                     style: GoogleFonts.poppins(
            //                         color: Colors.white, fontSize: 16),
            //                   ),
            //                   Text(
            //                     'Episode 1',
            //                     style: GoogleFonts.poppins(
            //                         color: Colors.white, fontSize: 14),
            //                   ),
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //         //------------------3----------------------
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Container(
            //                   height: 100,
            //                   width: 150,
            //                   decoration: BoxDecoration(
            //                       color: Colors.black.withOpacity(.5),
            //                       image: DecorationImage(
            //                           fit: BoxFit.fill,
            //                           image: AssetImage(
            //                               'assets/images/image2.png')),
            //                       borderRadius: BorderRadius.circular(8)),
            //                   child: Center(
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.red,
            //                       child: IconButton(
            //                           onPressed: () {},
            //                           icon: Icon(
            //                             Icons.play_arrow,
            //                             color: Colors.white,
            //                           )),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 5, left: 10),
            //                 child: Row(
            //                   children: [
            //                     Text(
            //                       'Keep Calm : ',
            //                       style: GoogleFonts.poppins(
            //                           color: Colors.white, fontSize: 16),
            //                     ),
            //                     Text(
            //                       'Episode 3',
            //                       style: GoogleFonts.poppins(
            //                           color: Colors.white, fontSize: 14),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}
