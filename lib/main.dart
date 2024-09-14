import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // this is used for str
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      print('Play note button pressed!');
                      playSound('note1.wav');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note2.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note3.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note4.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note5.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note6.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound('note7.wav');

                      print('Play note button pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.brown,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0.0), // Rounded corners
                      ),
                    ),
                    child: Text('Play Note'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to play the sound file from the assets
  Future<void> playSound(String soundFile) async {
    AudioPlayer _audioPlayer = AudioPlayer();
    await _audioPlayer.setSource(AssetSource(soundFile));
    await _audioPlayer.resume();  // Start playing the sound
  }
}