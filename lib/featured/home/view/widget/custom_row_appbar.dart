import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';

class CustomRowAppBar extends StatelessWidget {
  const CustomRowAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("asset/images/bbic.png", width: 22),
        Text(
          ' SHRINE',
          style: TextStyle(color: kIconColor),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: kIconColor,
            ))
      ],
    );
  }
}
