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
        child: addNoteForm(),
      ),
    );
  }
}

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  
  final GlobalKey<FormState> formKey = GlobalKey();
  
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey ,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFeild(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFeild(
            hint: 'Content...',
            height: 10,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            onTap: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              autovalidateMode =AutovalidateMode.always;
              setState(() {
                
              });
            },
          ),
          SizedBox(height: 28),
        ],
      ),
    );
  }
}
