import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);

class AudioAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.pink[300], Colors.blue[300]])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('assets/images/deathbed_img.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                    blurRadius: 50,
                  )
                ],
              ),
            ),
            Text(
              "Deathbed",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(FontAwesomeIcons.solidPauseCircle),
                    color: Colors.black87,
                    onPressed: () {
                      newPlayer.pause();
                    },
                  ),
                  IconButton(
                      iconSize: 45,
                      icon: Icon(
                        FontAwesomeIcons.play,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        audio.play("video/deathbed_song.mp3");
                      }),
                  IconButton(
                      iconSize: 25,
                      icon: Icon(FontAwesomeIcons.stop),
                      onPressed: () {
                        newPlayer.stop();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}