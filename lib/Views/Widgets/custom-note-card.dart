import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/Views/edit-note.dart';
import 'package:notes/models/note_model.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNote();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          padding:
              const EdgeInsets.only(left: 24, top: 24, bottom: 24, right: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(
                      color: Color.fromARGB(155, 0, 0, 0),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  color: Colors.black,
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  note.date,
                  style: const TextStyle(
                    color: Color.fromARGB(155, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
