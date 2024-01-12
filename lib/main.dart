import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes/Views/Widgets/const.dart';
import 'package:notes/Views/notes-view.dart';
import 'package:notes/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.G.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_pbserver.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Mooli'),
        home: const NotesView(),
      ),
    );
  }
}
