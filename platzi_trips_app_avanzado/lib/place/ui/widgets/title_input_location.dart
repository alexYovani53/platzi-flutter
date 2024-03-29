import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final IconData iconData;

  const TextInputLocation({ 
    Key? key, 
    required this.hintText,
    required this.iconData,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(right: 20.0, left: 20.0 ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.streetAddress,

        style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
        
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(iconData),
          fillColor:Colors.white,
          filled: true,
          border:InputBorder.none,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF)
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFFFFFF)
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
        )
      ),


      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );
  }
}