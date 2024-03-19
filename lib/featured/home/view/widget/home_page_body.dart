import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/utils/clipper_custom.dart';
import 'package:task_belal_alhamwy/featured/home/data/home_data.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_cart_buttn.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_icon_up.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_listview_home.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipMainContainer(),
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const CustomIconUp(),
            CustomListViewHome(data: homeData),
            const Spacer(),
            const CustomCartButton()
          ],
        ),
      ),
    );
  }
}
