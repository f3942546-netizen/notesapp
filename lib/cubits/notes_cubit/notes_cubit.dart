import 'package:bloc/bloc.dart';
import 'package:fares/cubits/notes_state.dart/cubit/notes_cubit.dart';
import 'package:fares/models/note_model.dart';
import 'package:fares/views/widgets/constants.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNotesInitial());

  List<NoteModel>? notes;

  fetchAllNotes() async {
    var notesbox = Hive.box<NoteModel>(knotesbox);

    notes = notesbox.values.toList();
  }
}
