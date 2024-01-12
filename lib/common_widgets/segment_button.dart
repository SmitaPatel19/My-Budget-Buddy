import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentButton extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  SegmentButton({super.key, required this.title,required this.isActive, required this.onPressed});

  @override
  State<SegmentButton> createState() => _SegmentButtonState();
}

class _SegmentButtonState extends State<SegmentButton> {
  @override
  Widget build(BuildContext context) {

    return
      InkWell(
        onTap: widget.onPressed,
        child: Container(
          decoration:
          widget.isActive?
          BoxDecoration(
            border: Border.all(
              color: Colors.lightBlue.shade50,
            ),
            color: Colors.blue.shade800.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ) : null,

          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isActive? Colors.white : Colors.blue.shade900.withOpacity(0.4),
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
    ),
      );
  }
}
