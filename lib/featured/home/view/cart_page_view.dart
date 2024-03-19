import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';
import 'package:task_belal_alhamwy/core/utils/clipper_custom.dart';
import 'package:task_belal_alhamwy/featured/home/data/home_data.dart';
import 'package:task_belal_alhamwy/featured/home/view/widget/custom_cart_product.dart';

class CartPageView extends StatefulWidget {
  const CartPageView({super.key});

  @override
  State<CartPageView> createState() => _CartPageViewState();
}

class _CartPageViewState extends State<CartPageView> {
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    totalPrice = 0;
    for (var i = 0; i < cartData.length; i++) {
      totalPrice = totalPrice + int.parse((cartData[i]['price']));
    }
    return Scaffold(
      backgroundColor: kPrimryColor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: kIconColor),
        backgroundColor: kPrimryColor,
        title: Text(
          'Cart',
          style: TextStyle(color: kIconColor),
        ),
      ),
      body: ClipPath(
        clipper: ClipMainContainer(),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisExtent: MediaQuery.of(context).size.height * .4),
                  itemCount: cartData.length,
                  itemBuilder: (context, index) {
                    return CustomCartProudct(
                        index: index,
                        onPressed: () {
                          setState(() {
                            cartData.removeAt(index);
                          });
                        });
                  },
                ),
              ),
              Text(
                "Total Price",
                style: TextStyle(fontSize: 20, color: kIconColor),
              ),
              Text(
                "$totalPrice \$",
                style: TextStyle(fontSize: 20, color: kIconColor),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
