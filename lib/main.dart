import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: ()  {
                AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/nota1.wav"),
                 autoPlay: true,
                  showNotification: true,
                );

              }, child: Text('Clique em mim!'),
            ),
          ),
        ),
      ),
    );
  }
}
