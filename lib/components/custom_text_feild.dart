import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';


class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint,  this.height = 1.0, this.onSaved});
  final String hint;
  final double height;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true ){
          return 'Feild Is Required';
        }else{
          return null;
        }
      },
      onSaved: onSaved ,
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
