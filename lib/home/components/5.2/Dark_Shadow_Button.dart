
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.red,
            elevation: 13,
            shadowColor: Colors.black,
            centerTitle: true,
            title:const Text(
              'Dark Shadow Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
                border: Border.all(
                  color: Colors.redAccent,
                ),
                boxShadow:const [
                  BoxShadow(
                    color: Colors.redAccent,
                    spreadRadius: 3,
                    blurRadius: 15,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text(
                'Tap',style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}