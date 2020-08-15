
import 'package:flutter/material.dart';
import 'audio.dart';
import 'video.dart';

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.music_note),
        title: Text('Player'),
        backgroundColor: Colors.black,
      ),
      body: Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueAccent[400], Colors.black])),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AudioAsset()),
                  );
                },
                color: Colors.blue,
                splashColor: Colors.blue[900],
                textColor: Colors.white,
                child: Icon(
                  Icons.play_circle_outline,
                  size: 55,
                ),
                padding: EdgeInsets.all(26),
                shape: CircleBorder(),
                ),
              
            
              RaisedButton(  
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoPlayerScreen2()));
                },
               color: Colors.blue,
               splashColor: Colors.blue[900],
               textColor: Colors.white,
                child: Icon(
                  Icons.view_array,
                  size: 55,
                ),   
                padding: EdgeInsets.all(26),
                shape: CircleBorder(),  
               
              ),
            ],
          ),
        ),
      ),
    );
  }
}