import 'package:fares/cubits/notes_cubit/notes_cubit.dart';
import 'package:fares/views/widgets/add_note_bottom_sheet.dart';
import 'package:fares/views/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Builder(
        builder: (innerContext) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: innerContext, // ✅ استخدم innerContext هنا
                builder: (_) {
                  return BlocProvider.value(
                    value:
                        BlocProvider.of<NotesCubit>(innerContext), // ✅ برضو هنا
                    child: const AddNoteBottomSheet(),
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody(),
        ),
      ),
    );
  }
}
