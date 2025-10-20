part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Notesloading extends NotesState {}

final class Notessucess extends NotesState {}

final class Notesfailure extends NotesState {
  final String errmessage;

  Notesfailure(this.errmessage);
}
