import 'package:bloc/bloc.dart';
import 'package:fares/models/note_model.dart';
import 'package:fares/views/widgets/constants.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  notes(NoteModel note) async {
    emit(Notesloading());
    try {
      var notesbox = Hive.box(knotesbox);
      emit(Notessucess());
      await notesbox.add(note);
    } catch (e) {
      Notesfailure(e.toString());
    }
  }
}
