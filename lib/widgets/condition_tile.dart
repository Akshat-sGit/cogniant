import 'package:flutter/material.dart';

class ConditionTile extends StatelessWidget {
  const ConditionTile({
    super.key,
    required this.condition,
    required this.selected,
  });

  final String condition;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    Color borderColor = selected
        ? const Color.fromARGB(255, 131, 35, 222)
        : const Color(0xFFE6E6E6);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      width: (MediaQuery.of(context).size.width - 48.0 - 16.0) / 2,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFF6E9FF) : const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8.0),
        border: Border(
          top: BorderSide(
            color: borderColor,
            width: selected ? 2 : 4,
          ),
          bottom: BorderSide(
            color: borderColor,
            width: selected ? 4 : 2,
          ),
          left: BorderSide(
            color: borderColor,
            width: 2,
          ),
          right: BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
      ),
      child: Text(
        condition,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
