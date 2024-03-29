import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines =0;

  TextInput({ 
    Key? key,
    required this.hintText,
    required this.inputType,
    required this.controller,
    this.maxLines=0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(right: 20.0, left: 20.0 ),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey
        ),
        
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffe5e5e5),
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffe5e5e5)
            ),
            borderRadius: BorderRadius.all(Radius.circular(9.0))
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffe5e5e5)
            ),
            borderRadius: BorderRadius.all(Radius.circular(9.0))
          ),
        ),
                   
      ),
      
    );
  }
}