import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/Edit_view_note.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesViewBody(),
      
    );
  }
}
