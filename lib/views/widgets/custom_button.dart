import 'package:fares/views/widgets/constants.dart';
import 'package:fares/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
