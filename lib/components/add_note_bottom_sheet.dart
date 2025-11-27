import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_button.dart';
import 'package:notes_app/components/custom_text_feild.dart';
// import 'package:notes_app/constant.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFeild(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextFeild(hint: 'Content...', height: 10),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}

