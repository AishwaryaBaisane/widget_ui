import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: secondColor,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: thirdColor,
            title: const Text(
              'My APP',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            // alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Color(0xff4daf51)),
              child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  // color: Colors.green,
                  decoration: const BoxDecoration(
                    color: Color(0xffb2fe57),
                  ),
                  child: Text(
                    'oooo',
                    style: TextStyle(
                      letterSpacing: -40,
                      fontSize: 130,
                      color: forthColor,
                    ),
                  )),
            ),
          ),
        ),
      ),
    ),
  );
}
