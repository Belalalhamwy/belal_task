import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';
import 'package:task_belal_alhamwy/featured/home/data/home_data.dart';

class CustomProdctCardThree extends StatelessWidget {
  const CustomProdctCardThree({
    super.key,
    required this.data,
    required this.index,
  });

  final List<Map> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 150, bottom: 150, left: 30, right: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              data[index]["image"],
            ),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: 5,
                left: 5,
                child: IconButton(
                    onPressed: () {
                      cartData.add(data[index]);
                    },
                    icon: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: kIconColor,
                    ))),
            const Positioned(
                left: 1,
                right: 1,
                bottom: -10,
                child: CircleAvatar(
                  radius: 10,
                  child: Icon(Icons.abc_rounded),
                )),
            Positioned(
              left: 1,
              right: 1,
              bottom: -40,
              child: Text(
                data[index]["dic"],
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 1,
              right: 1,
              bottom: -60,
              child: Text(
                "\$ ${data[index]["price"]}",
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
