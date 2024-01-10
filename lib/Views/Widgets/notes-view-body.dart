import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/custom-app-bar.dart';
import 'package:notes/Views/Widgets/custom-list-view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(
            text: 'Notes',
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
