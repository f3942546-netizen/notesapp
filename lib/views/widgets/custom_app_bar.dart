import 'package:fares/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}

class customsarechicon extends StatelessWidget {
  const customsarechicon({super.key});

  @override
  Widget build(BuildContext context) {
    return customsarechicon();
  }
}
