import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;

  const CustomButton({super.key, required this.buttonText});

  @override
  // ignore: library_private_types_in_public_api
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isPressed = !isPressed; // Toggle isPressed state
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Change background color on press
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
          side: BorderSide(
            color: isPressed ? Colors.purple : Colors.grey[300]!, // Border color changes on press
            width: 4.0,
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            widget.buttonText,
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}