import 'package:flutter/material.dart';
import 'package:hairstyles/splash_screen.dart';

import 'drawer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/main_pg',
      routes: {
        "/": (context) => SplashScreen(),
        "/main_pg": (context) => DrawerScreeen()
        // "/main_pg": (context) => HGrid()
      },
    );
  }
}
