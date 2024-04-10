import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ChessBord());
}

class ChessBord extends StatelessWidget {
  const ChessBord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 13,
        shadowColor: Colors.black,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Chess Board',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 414,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            children: [
              r1(),
              r2(),
              r1(),
              r2(),
              r1(),
              r2(),
              r1(),
              r2(),
            ],
          ),
        ),
      ),
    );
  }
}

Row r1() {
  return Row(
    children: [
      White(),
      Black(),
      White(),
      Black(),
      White(),
      Black(),
      White(),
      Black(),
    ],
  );
}

Row r2() {
  return Row(
    children: [
      Black(),
      White(),
      Black(),
      White(),
      Black(),
      White(),
      Black(),
      White(),
    ],
  );
}

Container White() {
  return Container(
    height: 51.1,
    width: 51.1,
    color: Colors.white,
  );
}

Container Black() {
  return Container(
    height: 51.1,
    width: 51.1,
    color: Colors.black,
  );
}