import 'package:fares/views/notes_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
