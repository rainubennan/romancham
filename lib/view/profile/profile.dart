// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/profile/edit_profile.dart';
import 'package:ott/view/profile/report_problem.dart';
import 'package:ott/view/profile/settings/settings.dart';
import 'package:ott/view/profile/transac_hist.dart';
import 'package:ott/view/profile/wishlist.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void logOut() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.red.shade900)),
              insetPadding: EdgeInsets.zero,
              title: Center(
                child: Text(
                  'Logout?',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ),
              ),
              content: SizedBox(
                height: 70,
                width: 300,
                child: Center(
                    child: Text(
                  'Do you Really wnat to logout?',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                )),
              ),
              actionsAlignment: MainAxisAlignment.spaceEvenly,
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16)),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.red.shade900,
                        foregroundColor: Colors.white),
                    child: Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16)),
                    )),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28282B),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?size=626&ext=jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Robin K',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'abcdefg@gmail.com',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 12),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()));
                          },
                          style: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.poppins(
                                color: Colors.red.shade900, fontSize: 12),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              // height: MediaQuery.of(context).size.height * .174,
              width: MediaQuery.of(context).size.width * .2,
              decoration: BoxDecoration(
                  color: const Color(0xff373535),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.red.shade900)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('assets/images/Icon.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get',
                          style: GoogleFonts.poppins(
                            textStyle:
                                const TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Text(
                          'Premium',
                          style: GoogleFonts.poppins(
                            textStyle:
                                const TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Text(
                          'Enjoy Endless Streaming',
                          style: GoogleFonts.poppins(
                            textStyle:
                                const TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.red.shade900,
                      size: 50,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
            child: ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Wishlist()));
              },
              tileColor: const Color(0xff373535),
              selectedTileColor: Colors.red.shade900,
              leading: Icon(
                Icons.watch_later_outlined,
                color: Colors.red.shade900,
              ),
              title: Text(
                'My Watchlist',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white),
                    fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.red.shade900,
                  size: 30,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionHistory()));
              },
              tileColor: const Color(0xff373535),
              selectedTileColor: Colors.red.shade900,
              leading: Icon(
                Icons.history,
                color: Colors.red.shade900,
              ),
              title: Text(
                'Transaction History',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white),
                    fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.red.shade900,
                  size: 28,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportProblem()));
              },
              tileColor: const Color(0xff373535),
              selectedTileColor: Colors.red.shade900,
              leading: Icon(
                Icons.manage_accounts_outlined,
                color: Colors.red.shade900,
              ),
              title: Text(
                'Report a Problem',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white),
                    fontSize: 14),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.red.shade900,
                  size: 28,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              tileColor: const Color(0xff373535),
              selectedTileColor: Colors.red.shade900,
              leading: Icon(
                Icons.tune_outlined,
                color: Colors.red.shade900,
              ),
              title: Text(
                'Settings',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.red.shade900,
                  size: 28,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: ListTile(
              onTap: () {
                logOut();
              },
              tileColor: const Color(0xff373535),
              selectedTileColor: Colors.red.shade900,
              leading: Icon(
                Icons.logout,
                color: Colors.red.shade900,
              ),
              title: Text(
                'Logout',
                style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 14)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.red.shade900,
                  size: 28,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          )
        ],
      ),
    );
  }
}
