import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Views/Widgets/add-note-bottom.dart';
import 'package:notes/Views/Widgets/notes-view-body.dart';
import 'package:notes/cubits/Add_note_cubit/notes/notes_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 49, 47, 47),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNote();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
