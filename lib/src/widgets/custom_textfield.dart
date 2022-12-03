import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscuretext;
  final String labelText;
  final double height;
  const CustomTextFormField(
      {super.key,
      this.onChanged,
      this.validator,
      required this.labelText,
      required this.obscuretext,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
          obscureText: obscuretext,
          cursorColor: Colors.grey[700],
          decoration: InputDecoration(
              floatingLabelStyle:
                  TextStyle(color: Colors.black.withOpacity(0.9)),
              fillColor: Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(18)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              labelText: labelText),
          onChanged: onChanged,
          validator: validator,
          textInputAction: TextInputAction.next),
    );
  }
}
