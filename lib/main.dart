import 'package:fares/cubits/notes_state.dart/cubit/notes_cubit.dart';
import 'package:fares/models/note_model.dart';
import 'package:fares/simple_bloc_observe.dart';
import 'package:fares/views/notes_view.dart';
import 'package:fares/views/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserve();
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: NotesView(),
      ),
    );
  }
}
