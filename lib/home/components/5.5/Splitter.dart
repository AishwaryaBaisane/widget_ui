import 'package:flutter/material.dart';

void main() {
  runApp(SPLITTER());
}

// import 'package:flutter/material.dart';
class SPLITTER extends StatefulWidget {
  const SPLITTER({super.key});

  @override
  State<SPLITTER> createState() => _SPLITTERState();
}

class _SPLITTERState extends State<SPLITTER> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'SPLITTER',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              color: Color(0xffff9700),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(20, (index) => row1(index :index)),
                  ),
                ),
              ),
            ),
            Container(
              height: 388,
              width: double.infinity,
              color: Color(0xfffe5722),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(20, (index) =>row2(index), ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }

  Padding row2(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        width: 80,
        color: Color(0xff9e9e9e),
        child: Center(
          child: Text(
            '${index+1}',style: TextStyle(
            color: Colors.black,
          ),
          ),
        ),
      ),
    );
  }

  Padding row1({required index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 400,
        color: Colors.amber,
        child: Center(
          child: Text(
            '${index+1}',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

