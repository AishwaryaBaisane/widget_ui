import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black87,
            title: Text(
              'THE WALL',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  r1(),
                  r2(),
                  r1(),
                  r2(),
                  r1(),
                  r2(),
                  r1(),
                  r2(),
                  r1(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Row r1() {
    return Row(

      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6,right: 5),
          child: Container(
            height: 70,
            width: 100,
            color: Color(0xff5d4038),

          ),
        ),
        SizedBox(width: 5,height: 10,),

        Padding(
          padding: const EdgeInsets.only(bottom: 6,right: 5),
          child: Container(

            height: 70,
            width: 181,
            color: Color(0xff5d4038),
          ),
        ),
        SizedBox(width: 5,),
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Container(
            height: 70,
            width: 110,
            color: Color(0xff5d4038),
          ),
        ),

      ],

    );
  }

  Row r2() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5,right: 5),
          child: Container(

            height: 70,
            width: 130,
            color: Color(0xff5d4038),
          ),
        ),
        SizedBox(width: 5,),

        Padding(
          padding: const EdgeInsets.only(bottom: 5,right: 5),
          child: Container(

            height: 70,
            width: 130,
            color: Color(0xff5d4038),
          ),
        ),
        SizedBox(width: 5,),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            height: 70,
            width: 131,
            color: Color(0xff5d4038),
          ),
        ),

      ],
    );
  }
}


