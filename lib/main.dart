// @dart=2.9

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget {

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play("sound$nota.mp3");
  }
  Expanded creaTecla({ Color color,  int nota,  String text}){
    return Expanded(child: TextButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 22, color: color),

        ),
      onPressed: (){
        teclaSound(nota);
      },
      style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> colorStates) {
      if (colorStates.contains(MaterialState.pressed)) return Colors.black;
      return color;
      }),
    ),
));
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(width: 50,),
              creaTecla(color: Colors.pink, nota: 1, text: "nota 1"),
              creaTecla(color: Colors.green, nota: 2, text: "nota 2"),
              creaTecla(color: Colors.blue, nota: 3, text: "nota 3"),
              creaTecla(color: Colors.red, nota: 4, text: "nota 4"),
              creaTecla(color: Colors.yellow, nota: 5, text: "nota 5"),
              creaTecla(color: Colors.purple, nota: 6, text: "nota 6"),
              creaTecla(color: Colors.grey, nota: 7, text: "nota 7"),
              creaTecla(color: Colors.redAccent, nota: 8, text: "nota 8"),
              creaTecla(color: Colors.lightGreenAccent, nota: 9, text: "nota 9"),
              creaTecla(color: Colors.blue, nota: 10, text: "nota 10"),
            ],
          )
        ),
      ),
    );
  }


}

