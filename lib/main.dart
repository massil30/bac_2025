import 'package:bac_2025/Introduction.dart';
import 'package:bac_2025/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
      home: x == "yes" ? FirstPage() : Introduction(),
    );
  }
}
