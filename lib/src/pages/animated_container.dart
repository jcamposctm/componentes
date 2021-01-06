import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimadedContainerPageState createState() => _AnimadedContainerPageState();
}

class _AnimadedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 5),
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _cambiarForma() {
    setState(() {
      final random = Random();

      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
