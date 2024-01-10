import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/Views/edit-note.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

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
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Flutter Tips',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Build your career do not \nlook back',
                    style: TextStyle(
                      color: Color.fromARGB(155, 0, 0, 0),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'May21, 2022',
                  style: TextStyle(
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
