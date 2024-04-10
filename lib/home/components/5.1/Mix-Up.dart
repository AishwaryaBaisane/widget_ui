import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'color box',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            title: const Text(
              'Mix-up',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: 400,
              color: SIXthColor,
              alignment: Alignment.bottomRight,
              child: Container(
                width: 330,
                height: 350,
                decoration: BoxDecoration(color: SEVENthColor),
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 280,
                  height: 300,
                  decoration: BoxDecoration(color: EIGHTthColor),

                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 230,
                    height: 250,
                    decoration: BoxDecoration(color: NINEthColor),
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 190,
                      height: 200,
                      decoration: BoxDecoration(color: TENthColor),
                      alignment: Alignment.center,
                      child: Container(
                        width: 150,
                        height: 160,
                        decoration: BoxDecoration(color: ELEthColor),
                      ),
                    ),
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