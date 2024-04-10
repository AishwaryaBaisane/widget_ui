import 'package:flutter/material.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp();
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Color(0xff54759e),
          title: const Text(
            'Calc',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Align(
          child: Column(
            children: [
              Padding(
                child: Text(
                  '$count',
                  style: TextStyle(color: Colors.black26, fontSize: 90),
                ),
                padding: const EdgeInsets.only(
                  top: 190,
                  bottom: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          count = count - 2;
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xff54759e),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '- 2',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          count = count + 2;
                        },
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff54759e),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '+2',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          count = count - 4;
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xff54759e),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '+4',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          count = count + 4;
                        },
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff54759e),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '+4',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          count = 0;
                        },
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff54759e),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Clear',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
  }
}

int count = 0;
