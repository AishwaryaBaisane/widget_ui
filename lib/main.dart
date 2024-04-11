import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

Widget Box({required int index}) {
  return Container(
    height: 120,
    width: double.infinity,
    alignment: Alignment.center,
    margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
    decoration: BoxDecoration(
      color: (index % 2 == 1) ? Color(0xff75e2ff) : Color(0xff5689c0),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      '$index',
      style: const TextStyle(fontSize: 40, color: Colors.white),
    ),
  );
}

Widget box({required IconData icon}) {
  return Container(
    height: 70,
    width: 80,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Color(0xFF244D61),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
            color: Colors.black45,
            spreadRadius: -1,
            blurRadius: 4,
            offset: Offset(10, 10)),
      ],
    ),
    child: Icon(
      icon,
      color: Colors.white,
      size: 30,
    ),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF244D61),
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          'Dynamic List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(list.length, (index) => Box(index: index)),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                list.add(Box(index: index));
              });
            },
            child: box(icon: Icons.add),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                list.removeAt((list.length) - 1);
              });
            },
            child: box(icon: Icons.remove),
          ),
        ],
      ),
    );
  }
}

int index = 1;

List list = [];
