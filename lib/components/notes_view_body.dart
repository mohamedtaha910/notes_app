import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_app_bar.dart';
// import 'package:notes_app/components/note_item.dart';
import 'package:notes_app/components/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          SizedBox(height: 55),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          SizedBox(height: 20,),
          Expanded(child: NotesListView()),
          // NoteItem()
          
        ],
      ),
    );
  }
}


