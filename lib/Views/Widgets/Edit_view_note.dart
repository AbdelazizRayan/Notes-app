import 'package:flutter/material.dart';
import 'package:notes/Views/Widgets/custom-app-bar.dart';
import 'package:notes/Views/Widgets/custom-textfiled.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.done,
          ),
          SizedBox(
            height: 70,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
