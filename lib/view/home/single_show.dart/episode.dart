import 'package:flutter/material.dart';

class Episode extends StatefulWidget {
  const Episode({ Key? key }) : super(key: key);

  @override
  _EpisodeState createState() => _EpisodeState();
}

class _EpisodeState extends State<Episode> {
  List episodes=['1','3','4'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: episodes.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Stack(children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/image2.png'))
            ),
          )
        ]),
      );
    },
      
    );
  }
}