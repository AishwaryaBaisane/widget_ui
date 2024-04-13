import 'package:flutter/material.dart';

void main() {
  runApp(Bolt());
}

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          //  backgroundColor: Color(0xfffec107),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: Text(
                'BOLT',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 11, fontSize: 25),
              ),
            ),
            body: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 160,
                  decoration: BoxDecoration(color: Color(0xfffec107)),
                ),
                Container(
                  height: double.infinity,
                  width: 90,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Image.asset("assets/img/pro.png",width:30,height: 30,),
                ),
                Container(
                  height: double.infinity,
                  width: 160,
                  decoration: BoxDecoration(color: Color(0xfffec107)),
                ),
              ],
            )
        ),
      ),
    );
  }
}
