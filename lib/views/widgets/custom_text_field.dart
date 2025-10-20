import 'package:fares/views/widgets/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlines = 1, this.onsaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requried';
        } else {
          return null;
        }
      },
      maxLines: widget.maxlines,
      cursorColor: (kprimarycolor),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: kprimarycolor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
