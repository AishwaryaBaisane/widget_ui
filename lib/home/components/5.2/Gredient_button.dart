
import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: main8Color,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: main9Color,
            title: const Text(
              'Gredient Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            child: Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white),
                gradient: LinearGradient(
                  colors: [new1Color, new2Color, SIXthColor],
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Flutter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}