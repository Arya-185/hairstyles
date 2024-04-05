import 'package:flutter/material.dart';
import 'package:hairstyles/controller/fetch_data_controller.dart';
import 'package:hairstyles/splash_screen.dart';
import 'package:provider/provider.dart';

import 'drawer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FetchDataController()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
