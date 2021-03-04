import 'package:flutter/material.dart';

class DarkTextField extends StatelessWidget {
  final double screenHeight;
  final TextInputType keyboardType;
  final String hintTextContent;
  final bool isHidden;
  final IconButton textFieldIcon;
  DarkTextField({
    @required this.screenHeight,
    this.keyboardType,
    this.hintTextContent,
    this.isHidden,
    this.textFieldIcon,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: screenHeight * 0.024,
          vertical: screenHeight * 0.03,
        ),
        filled: true,
        fillColor: Colors.grey[900],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey[700],
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1,
          ),
        ),
        hintText: hintTextContent,
        hintStyle: TextStyle(
          fontSize: screenHeight * 0.024,
        ),
        suffixIcon: textFieldIcon,
      ),
      keyboardType: TextInputType.emailAddress,
      obscureText: isHidden ?? false,
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: screenHeight * 0.028,
      ),
    );
  }
}
