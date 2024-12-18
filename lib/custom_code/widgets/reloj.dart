// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class StaticAnalogClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Reloj circular
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          // Manecilla de hora
          Transform.rotate(
            angle: 1, // Ajusta el ángulo
            child: Container(
              width: 6,
              height: 50,
              color: Colors.black,
            ),
          ),
          // Manecilla de minutos
          Transform.rotate(
            angle: 2.5, // Ajusta el ángulo
            child: Container(
              width: 4,
              height: 70,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
