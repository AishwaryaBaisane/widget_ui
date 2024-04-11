import 'Package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 3,
          centerTitle: true,
          title: const Text(
            'Icons',
            style: TextStyle(
              fontSize: 29,
            ),
          ),
        ),
        body: Align(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: scrollRow(
                  i1: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                  i2: const Icon(
                    Icons.stop_circle_outlined,
                    size: 40,
                  ),
                  i3: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 40,
                  ),
                  i4: const Icon(
                    Icons.arrow_forward_ios,
                    size: 40,
                  ),
                ),
              ),
              scrollRow(
                i1: const Icon(
                  Icons.verified_user_rounded,
                  size: 40,
                ),
                i2: const Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                ),
                i3: const Icon(
                  Icons.sync,
                  size: 40,
                ),
                i4: const Icon(
                  Icons.close,
                  size: 40,
                ),
              ),
              scrollRow(
                i1: const Icon(
                  Icons.call,
                  size: 40,
                ),
                i2: const Icon(
                  Icons.more_vert,
                  size: 40,
                ),
                i3: const Icon(
                  Icons.arrow_circle_down_rounded,
                  size: 40,
                ),
                i4: const Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
              ),
              scrollRow(
                i1: const Icon(
                  Icons.pause,
                  size: 40,
                ),
                i2: const Icon(
                  Icons.stop,
                  size: 40,
                ),
                i3: const Icon(
                  Icons.trip_origin,
                  size: 40,
                ),
                i4: const Icon(
                  Icons.search,
                  size: 40,
                ),
              ),
              scrollRow(
                i1: const Icon(
                  Icons.app_blocking,
                  size: 40,
                ),
                i2: const Icon(
                  Icons.apps,
                  size: 40,
                ),
                i3: const Icon(
                  Icons.schedule,
                  size: 40,
                ),
                i4: const Icon(
                  Icons.school,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SingleChildScrollView scrollRow(
    {required i1, required i2, required i3, required i4}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        icon(i1: i1),
        icon(i1: i2),
        icon(i1: i3),
        icon(i1: i4),
      ],
    ),
  );
}

Container icon({required i1}) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 120,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Color(0xffe0e0e0),
    ),
    child: i1,
  );
}
