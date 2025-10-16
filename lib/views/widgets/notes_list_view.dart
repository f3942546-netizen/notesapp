import 'package:fares/views/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: noteitem(),
        );
      },
    );
  }
}
