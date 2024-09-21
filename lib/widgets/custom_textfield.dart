import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controllerr;
  final String hintText;

  const CustomTextField({super.key,required this.controllerr, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerr,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 14,horizontal: 16),
        fillColor: const Color(0xffF5F5FA),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400)
      ),
    );
  }
}
