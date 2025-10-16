import 'package:fares/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 28)),
        Spacer(),
        customsarechicon(),
      ],
    );
  }
}

class customsarechicon extends StatelessWidget {
  const customsarechicon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomIcon();
  }
}
