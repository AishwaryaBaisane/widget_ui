
import 'package:flutter/material.dart';
// import 'package:widget_ui/home/components/5.4/Dynamic.dart';

void main() {
  runApp(LastTask());
}

class LastTask extends StatefulWidget {
  const LastTask({super.key});

  @override
  State<LastTask> createState() => _LastTaskState();
}

class _LastTaskState extends State<LastTask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfff0f1f3),
          appBar: AppBar(
            centerTitle: true,
            elevation: 4,
            shadowColor: Colors.black,
            title: const Text(
              'Icons Editor',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 290,
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Icon(
                  SelectIcon,
                  size: 90,
                  color: SelectColor,
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                child: Text(
                  'Select Color',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                margin: const EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3,
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: double.infinity,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        spreadRadius: 0,
                        blurRadius: 3,
                      ),
                    ]),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      c1.length,
                          (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            SelectColor = c1[index];
                          });
                        },
                        child: ColorBox(color: c1[index]),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                child: Text(
                  'Select Icon',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 4,
                        color: Colors.black38,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 3,
                      color: Colors.black38,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      i1.length,
                          (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectIcon = i1[index];
                            });
                          },
                          child: IconBox(icon: i1[index], color: SelectColor)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container IconBox({required IconData icon, required color}) {
  return Container(
    height: 80,
    width: 80,
    alignment: Alignment.center,
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 2,
          blurRadius: 3,
        ),
      ],
    ),
    child: Icon(
      icon,
      color: color,
      size: 39,
    ),
  );
}

Container ColorBox({required color}) {
  return Container(
    height: 85,
    width: 85,
    margin: const EdgeInsets.only(left: 10),
    decoration:
    BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
  );
}

List c1 = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.cyan,
  Colors.orange,
  Colors.deepOrange,
  Colors.brown,
  Colors.amber,
];

List i1 = [
  Icons.add,
  Icons.abc_outlined,
  Icons.radar_outlined,
  Icons.call_end,
  Icons.ac_unit_rounded,
  Icons.adb_sharp,
];

var SelectIcon;
Color SelectColor = Colors.blueGrey;

