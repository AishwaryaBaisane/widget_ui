
import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            title: const Text(
              'Letter Cover',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: primaryColor,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: primaryColor,
                    width: 110,
                  ),
                  horizontal: BorderSide(
                    color: main3Color,
                    width: 110,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}