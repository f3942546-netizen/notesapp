import 'package:fares/cubits/notes_state.dart/cubit/notes_cubit.dart';
import 'package:fares/models/note_model.dart';
import 'package:fares/views/widgets/custom_button.dart';
import 'package:fares/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
              onsaved: (value) {
                title = value;
              },
              hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
              onsaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxlines: 5),
          SizedBox(height: 16),
          custombutton(
            ontap: () {
              print('Button clicked ✅');
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    subtitile: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<NotesCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
