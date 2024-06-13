import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback callbackAction;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.callbackAction,
    this.backgroundColor,
    this.textColor,
  });

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.callbackAction,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color:
              widget.backgroundColor ?? const Color.fromARGB(255, 131, 35, 222),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: widget.backgroundColor == Colors.transparent
              ? []
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.textColor ?? Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
