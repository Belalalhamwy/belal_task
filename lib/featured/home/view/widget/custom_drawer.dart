import 'package:flutter/material.dart';
import 'package:task_belal_alhamwy/core/constant/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kSecondColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset("asset/images/bbic.png", height: 30),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: "SEARCH SHRINE",
                    suffixIcon: Icon(
                      Icons.search,
                      color: kIconColor,
                    ),
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kIconColor,
                    ),
                  )),
                ),
                const Spacer()
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "FEATURED", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "APARTMENT", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "ACCESSORIES", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "SHOES", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "TOPS", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "BOTTOMS", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "DRESSES", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                CustomTextButton(text: "MY ACCOUNT", onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
              ],
            )
          ]),
        )
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
