import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/add-note-button.dart';
import 'package:notes/Views/Widgets/notes-view-body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 49, 47, 47),
        onPressed: () {
          showModalBottomSheet(
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
    );
  }
}
