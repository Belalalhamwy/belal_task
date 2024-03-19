import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_prodctcard_one.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_prodctcard_two.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_prodcutcard_three.dart';

class CustomListViewHome extends StatelessWidget {
  const CustomListViewHome({
    super.key,
    required this.data,
  });

  final List<Map> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Column(
            children: [
              CustomProdctCardOne(data: data, index: 0),
              const Spacer(),
              CustomProdctCardTwo(data: data, index: 1),
              const Spacer()
            ],
          ),
        
        CustomProdctCardThree(data: data, index: 2),
         Column(
            children: [
              CustomProdctCardOne(data: data, index: 3),
              const Spacer(),
              CustomProdctCardTwo(data: data, index: 4),
              const Spacer()
            ],
          ),
       
        CustomProdctCardThree(data: data, index: 5),
      ]),
    );
  }
}
