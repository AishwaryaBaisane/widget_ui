
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.teal,
            title: const Text(
              'A Shadow Button',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Align(
            child: Container(
              height: 80,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(color: Colors.teal),
                boxShadow: const [
                  BoxShadow(color: Colors.teal, spreadRadius: 3, blurRadius: 8)
                ],
              ),
              alignment: Alignment.center,
              child: const Text(
                'Tap',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}