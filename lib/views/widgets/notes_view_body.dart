import 'package:fares/views/widgets/custom_app_bar.dart';
import 'package:fares/views/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        children: [
          SizedBox(height: 20),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: notelistview()),
        ],
      ),
    );
  }
}
