import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // cursorColor: ,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: const Color.fromARGB(255, 125, 121, 121)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color.fromARGB(255, 249, 95, 48)),
        ),
      ),
    );
  }
}
