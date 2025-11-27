import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 55),
          CustomAppBar(icon: Icons.check, title: 'Edit Note',),
          SizedBox(height: 40,),
          CustomTextFeild(hint: 'title',),
          SizedBox(height: 16,),
          CustomTextFeild(hint: 'content...',height: 10,)

          // Expanded(
          //   child: TextField(
          //     maxLines: null,
          //     expands: true,
          //     decoration: InputDecoration(
          //       hintText: 'Edit your note here...',
          //       border: InputBorder.none,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}