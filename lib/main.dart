import 'package:bac_2025/view/Introduction.dart';
import 'package:bac_2025/view/calculatur.dart';
import 'package:bac_2025/view/home.dart';
import 'package:bac_2025/view/youtube.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

var x;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//main
  final SharedPreferencesWithCache prefsWithCache =
      await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      // When an allowlist is included, any keys that aren't included cannot be used.
      allowList: <String>{'first'},
    ),
  );
  x = prefsWithCache.get("first");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        useMaterial3: true,
      ),
      home: x == "yes" ? MainPage() : Introduction(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var current_index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.green.shade700,
        onTap: (value) {
          setState(() {
            current_index = value;
          });
        },
        currentIndex: current_index,
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey, // Color of the unselected label
          fontWeight: FontWeight.w600, // Font weight of the unselected label
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الصفحة الرئيسة ",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill), label: "قنوات يوتيوب")
        ],
      ),
      body: IndexedStack(
        index: current_index,
        children: const [FirstPage(), Youtube()],
      ),
    );
  }
}
