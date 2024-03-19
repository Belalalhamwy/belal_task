import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';
import 'package:task_belal_alhamwy/featured/home/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageView(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: kIconColor),
        drawerTheme: DrawerThemeData(
            scrimColor: kIconColor,
            backgroundColor: kIconColor,
            surfaceTintColor: kIconColor),
      ),
    );
  }
}
