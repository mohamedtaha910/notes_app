import 'package:flutter/material.dart';
import 'package:notes_app/components/add_note_bottom_sheet.dart';
import 'package:notes_app/components/notes_view_body.dart';
import 'package:notes_app/constant.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteSheet();
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 45, 0, 0),
        child: Icon(
          // Icons.edit_note_rounded,
          Icons.notes_sharp,
          // color: const Color.fromARGB(255, 250, 110, 67),
          color: kPrimaryColor,
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,),)
    );
  }
}
