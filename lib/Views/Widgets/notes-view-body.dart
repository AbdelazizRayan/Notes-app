import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/custom-app-bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/Views/Widgets/custom-note-card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 15,
          ),
          CustomNoteCard(),
        ],
      ),
    );
  }
}
