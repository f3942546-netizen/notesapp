import 'package:fares/cubits/notes_cubit/notes_cubit.dart';
import 'package:fares/models/note_model.dart';
import 'package:fares/views/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: noteitem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
