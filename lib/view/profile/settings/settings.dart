// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/view/profile/settings/change_pass.dart';
import 'package:ott/view/profile/settings/device_manage.dart';
import 'package:ott/view/profile/settings/privacy_policy.dart';
import 'package:ott/view/profile/settings/terms_conditions.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28282B),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff28282B),
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: ListTile(
              tileColor: const Color(0xff373535),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassword()));
              },
              title: Text(
                'Change Password',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.red.shade900,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListTile(
              tileColor: const Color(0xff373535),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeviceManage()));
              },
              title: Text(
                'Device Management',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.red.shade900,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListTile(
              tileColor: const Color(0xff373535),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicy()));
              },
              title: Text(
                'Privacy Policy',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.red.shade900,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListTile(
              tileColor: const Color(0xff373535),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermsConditions()));
              },
              title: Text(
                'Terms & Conditions',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              trailing: Icon(
                Icons.arrow_right,
                color: Colors.red.shade900,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
