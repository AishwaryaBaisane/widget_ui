import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo App',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            title:const Text(
              'Mission of RNW',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            child: Container(
              alignment: Alignment.center,
              height: 115,
              width: 350,
              decoration: BoxDecoration(
                color: fifthColor,
                border: const Border(
                  left: BorderSide(width: 15, color: Colors.redAccent),
                ),
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '  Shaping "Skills" for "Scalling"higher',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '      -RNW',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
