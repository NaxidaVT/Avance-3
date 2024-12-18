// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

class RandomImageWidget extends StatefulWidget {
  @override
  _RandomImageWidgetState createState() => _RandomImageWidgetState();
}

class _RandomImageWidgetState extends State<RandomImageWidget> {
  final List<String> _images = [
    'https://m.media-amazon.com/images/I/71AlKndhntL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
    'https://m.media-amazon.com/images/I/81kcd-o0KcL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
    'https://m.media-amazon.com/images/I/81C+3s+7xaL._AC_SX466_.jpg',
  ];
  int _currentIndex = 0;

  void _changeImage() {
    setState(() {
      _currentIndex = Random().nextInt(_images.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            _images[_currentIndex],
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeImage,
            child: Text("Cambiar Imagen"),
          ),
        ],
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
