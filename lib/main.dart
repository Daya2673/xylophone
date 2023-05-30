import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: xylophone()));
}
      class xylophone extends StatelessWidget {
        const xylophone({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text
                (
                'xylophone'
              ),
            ),
            body: Column(
              children: [
                container(color:Colors.pink ,sound: 1,),
                container(color: Colors.yellowAccent, sound: 2,),
                container(color: Colors.pinkAccent, sound: 3,),
                container(color: Colors.lightBlue, sound: 4,),
                container(color: Colors.orange, sound: 5,),
                container(color: Colors.black, sound: 6,),
                container(color: Colors.green, sound: 7,),
                  ]
            ),
          );


}
      }

class container extends StatelessWidget {
 Color color;
 int sound;
 container({required this.color,required this.sound});
 Void playSound(int soundNumber){
   final player=AudioCache();
   player.play('assets_note$soundNumber.wav');
 }
 @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
         color: color,
      child: TextButton(
        onPressed: (){},
        child: Center(child: Text('audio'),),
      ),
    ));
  }
}

