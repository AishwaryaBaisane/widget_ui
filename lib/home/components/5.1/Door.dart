import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: const Text(
                'Opened Doors',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Align(
              alignment: Alignment.center,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.symmetric(
                      vertical: BorderSide(
                        width: 80,
                        color: main7Color,
                      ),
                      horizontal: const BorderSide(
                        width: 30,
                        color: Colors.black,
                      )),
                ),
              ),
            )),
      ),
    ),
  );
}
