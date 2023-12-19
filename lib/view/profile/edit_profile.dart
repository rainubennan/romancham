import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/profile/select_avatar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff28282B),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color(0xff28282B),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?size=626&ext=jpg',
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SelectAvatar()));
                    },
                    child: Text(
                      'Select Avatar +',
                      style: GoogleFonts.poppins(color: Colors.red),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: MediaQuery.of(context).size.height * .08,
              decoration: BoxDecoration(
                  color: Color(0xff373535),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.red.shade900,
                      ),
                      hoverColor: Color(0xff373535),
                      fillColor: Color(0xff373535),
                      hintText: 'Your Name',
                      hintStyle: GoogleFonts.poppins(color: Color(0xff5A5757))),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Container(
              height: MediaQuery.of(context).size.height * .08,
              decoration: BoxDecoration(
                  color: Color(0xff373535),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.red.shade900,
                      ),
                      hoverColor: Color(0xff373535),
                      fillColor: Color(0xff373535),
                      hintText: 'Date of Birth',
                      hintStyle: GoogleFonts.poppins(color: Color(0xff5A5757))),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 32),
            child: Text(
              'Gender',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff28282B),
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder()),
                    child: Text(
                      'Male',
                      style: GoogleFonts.poppins(color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff28282B),
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder()),
                    child: Text(
                      'Female',
                      style: GoogleFonts.poppins(color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff28282B),
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder()),
                    child: Text(
                      'Others',
                      style: GoogleFonts.poppins(color: Colors.white),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .08,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text('Edit Profile',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
