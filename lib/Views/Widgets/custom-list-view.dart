import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/custom-note-card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: CustomNoteCard(),
            );
          }),
    );
  }
}
