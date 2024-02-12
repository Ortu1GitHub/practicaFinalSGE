import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter3/xilofono.dart';

import 'bongos.dart';
import 'guitarra.dart';

void main() {
  runApp(
    MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text('Mi app de música'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: buildButton('xilo.jpg', context, Xilofono()),
              ),
              Expanded(
                child: buildButton('guitarra.jpg', context, Guitarra()),
              ),
              Expanded(
                child: buildButton('bongos.jpg', context, Bongos()),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget buildButton(String imageName, BuildContext context, Widget screen) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
    },
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/$imageName'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}






