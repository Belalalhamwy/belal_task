import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/featured/home/data/home_data.dart';

class CustomCartProudct extends StatelessWidget {
  const CustomCartProudct({
    super.key,
    required this.onPressed,
    required this.index,
  });
  final void Function() onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: MediaQuery.of(context).size.height * .15,
            width: MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  cartData[index]["image"],
                ),
              ),
            ),
          ),
        ),
        Text(
          cartData[index]["dic"],
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "\$ ${cartData[index]["price"]}",
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        IconButton(onPressed: onPressed, icon: const Icon(Icons.delete))
      ],
    );
  }
}
