import 'package:flutter/material.dart';

class CustomIconUp extends StatelessWidget {
  const CustomIconUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.display_settings_rounded,
              size: 28,
            )),
      ],
    );
  }
}
