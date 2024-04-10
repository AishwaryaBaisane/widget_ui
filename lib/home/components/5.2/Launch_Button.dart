import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff4cb050),
            title: const Text(
              'Launch Button',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Align(
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(97),
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 8,
                    blurRadius: 7,
                    color: Color(0XFF4cb050),
                  ),
                ],
                border: Border.all(color: Colors.white),
              ),
              alignment: Alignment.center,
              child: const Text(
                'GO',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
