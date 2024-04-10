import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Map());
}

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff2196f3),
            elevation: 13,
            shadowColor: Colors.black,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            centerTitle: true,
            title: const Text(
              'Map',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Align(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffeeeeee),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children:
                    List.generate(boxList.length, (index) => Box(name : boxList[index]['name'],icon : boxList[index]['icon'])) ,
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
List boxList =
[
  {'name' : 'Exit','icon' : Icons.exit_to_app},
  {'name' : 'Play','icon' : Icons.play_arrow},
  {'name' : 'Pause','icon' : Icons.pause},
  {'name' : 'Stop', 'icon': Icons.stop},
  {'name' : 'Close','icon' : Icons.close},
  {'name' : 'Delete','icon' : Icons.delete},
  {'name' : 'E-mail','icon' : Icons.mail},
  {'name' : 'Setting','icon' : Icons.settings},
  {'name' : 'Home','icon' : Icons.home},

];

Container Box({required String name,required IconData icon})
{
  return Container(
    height: 88,
    width: double.infinity,
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: TextStyle(fontSize: 23),),
          Icon(icon,size: 28),
        ],
      ),
    ),
  );

}
