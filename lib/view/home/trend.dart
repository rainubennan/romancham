// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ott/view/home/single_show.dart/single.dart';
import 'package:ott/view/home/videoplay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carousel Slider Example'),
        ),
        body: const SliderDisplay(),
      ),
    );
  }
}

class SliderDisplay extends StatefulWidget {
  const SliderDisplay({super.key});

  @override
  _SliderDisplayState createState() => _SliderDisplayState();
}

class _SliderDisplayState extends State<SliderDisplay> {
  int _currentIndex = 0;

  List<String> imagePaths = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png',
    'assets/images/imagemain.png',
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Single()));
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CarouselSlider(
            items: imagePaths.map((path) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        path,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 500.0,
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 500.0,
              viewportFraction: 1,
              enlargeCenterPage: false,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            left: 30,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagePaths.map((url) {
                int index = imagePaths.indexOf(url);
                return Container(
                  width: _currentIndex == index ? 70 : 10,
                  height: 10.0,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _currentIndex == index
                        ? const Color(0xFFBB2525)
                        : const Color(0xFFD9D9D9),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              icon: const CircleAvatar(
                  backgroundColor: Color(0xFFBB2525),
                  radius: 30,
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 40)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const ChewieDemo()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
