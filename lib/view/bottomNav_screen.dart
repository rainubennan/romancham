// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/view/profile/profile.dart';

import 'home/home.dart';
import 'search/search_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0; // Index of the selected icon

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF28282B),
      extendBody: true, // Allow body to extend behind bottom navigation bar
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          SearchPage(),
          Profile()
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .06),
        height: displayWidth * .17,
        decoration: BoxDecoration(
          color: const Color(0xFF181412),
          borderRadius: BorderRadius.circular(29),
        ),
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: _selectedIndex == 0 ? Colors.red[900] : Colors.transparent,
                child: IconButton(
                  icon: const Icon(CupertinoIcons.home, size: 25, color: Colors.white),
                  onPressed: () {
                    _onIconPressed(0);
                  },
                ),
              ),
            ),
            Expanded(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: _selectedIndex == 1 ? Colors.red[900] : Colors.transparent,
                child: IconButton(
                  icon: const Icon(CupertinoIcons.search, size: 25, color: Colors.white),
                  onPressed: () {
                    _onIconPressed(1);
                  },
                ),
              ),
            ),
            Expanded(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: _selectedIndex == 2 ? Colors.red[900] : Colors.transparent,
                child: IconButton(
                  icon: const Icon(CupertinoIcons.person, size: 25, color: Colors.white),
                  onPressed: () {
                    _onIconPressed(2);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onIconPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
