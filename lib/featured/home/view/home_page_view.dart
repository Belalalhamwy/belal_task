import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_drawer.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_row_appbar.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/home_page_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimryColor,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kIconColor),
        title: const CustomRowAppBar(),
        elevation: 0,
        backgroundColor: kPrimryColor,
      ),
      body: const SafeArea(child: HomePageBody()),
    );
  }
}
