import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff003c44),
            title: Text(
              'Counter App',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Align(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50, left: 40),
                  child: Text(
                    ' Press button and see Magic... ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  '$Count',
                  style: TextStyle(fontSize: 40, color: Colors.black54),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Count++;
                        });
                      },
                      child : Container(
                        margin: EdgeInsets.only(top: 450,left: 150),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff003c44),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

int Count = 0;
