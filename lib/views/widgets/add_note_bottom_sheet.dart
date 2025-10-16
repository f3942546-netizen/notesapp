import 'package:fares/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 32), CustomTextField()]),
    );
  }
}
