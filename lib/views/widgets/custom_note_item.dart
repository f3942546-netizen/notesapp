import 'package:fares/models/note_model.dart';
import 'package:fares/views/widgets/edit_view_body.dart';
import 'package:flutter/material.dart';

class noteitem extends StatelessWidget {
  const noteitem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteViewBody();
            },
          ),
        );
      },
      child: Material(
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subtitile,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
