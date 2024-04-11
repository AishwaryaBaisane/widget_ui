import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: mthColor,
          appBar: AppBar(
            elevation: 13,
            shadowColor: Colors.black,
            centerTitle: true,
            backgroundColor: Color(0xff2f79da),
            title: const Text(
              'An Indian Flag',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff248deb),
                    Color(0xff395fc2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 270,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xfffe5722),
                        Color(0xfffffcfa),
                        Color(0xff398e3d),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    border: Border.all(color: Colors.white)),
                alignment: Alignment.center,
                child: const Text(
                  '*',
                  style: TextStyle(
                    fontSize: 90,
                    color: Color(0xff01008a),
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
