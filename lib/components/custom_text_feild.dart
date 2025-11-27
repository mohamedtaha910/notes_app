import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';


class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint,  this.height = 1.0});
  final String hint;
  final double height;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // textAlignVertical:TextAlignVertical(y: 0.1),
      // cursorColor: ,
      decoration: InputDecoration(
        hintText: hint,
        // hintMaxLines: maxLines,
        
        hintStyle: TextStyle(color: const Color.fromARGB(255, 125, 121, 121),height: height),
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
          borderSide: BorderSide(color:kPrimaryColor),
        ),
      ),
    );
  }
}
