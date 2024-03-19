import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';
import 'package:task_belal_alhamwy/core/utils/clipper_custom.dart';
import 'package:task_belal_alhamwy/featured/home/view/cart_page_view.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartPageView(),
            ));
          },
          child: ClipPath(
              clipper: ClipCartContainar(),
              child: Container(
                color: kSecondColor,
                width: 60,
                height: 60,
                child: Icon(
                  Icons.shopping_cart,
                  color: kIconColor,
                ),
              )),
        ),
      ],
    );
  }
}
