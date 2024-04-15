
import 'package:flutter/Material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffff9700),
          title: Text(
            'Emoji',
            style: TextStyle(
                color: Colors.white,fontSize: 30
            ),
          ),
        ),
        body: Align(
          child: Center(
            child: Container(
              height: 330,
              width: 330,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffFF9800),
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 260,
                width: 260,
                alignment: Alignment(-0.65, -0.50),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    border: Border(
                        bottom: BorderSide(color: Colors.white, width: 15))),
                child: Container(
                  height: 78,
                  width: 78,
                  alignment: Alignment(75, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 76,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
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
}
