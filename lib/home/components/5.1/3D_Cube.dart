
import 'package:flutter/material.dart';
import 'package:widget_ui/utils/color.dart';


void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: main4Color,
              centerTitle: true,
              title: Text('3D Cube',style: TextStyle(color:Colors.white),),
            ),
            body: Align(
              alignment: Alignment.center,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(color: main4Color,
                    border: Border.symmetric(
                        vertical: BorderSide(
                            width: 40,
                            color:main6Color
                        ),
                        horizontal: BorderSide(
                          width: 40,
                          color: main5Color,
                        )
                    )),
              ),
            ),
          ),
        ),

      )
  );

}