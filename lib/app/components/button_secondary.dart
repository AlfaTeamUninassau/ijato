import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSecondary extends StatefulWidget {
  final String buttonSecondaryName;
  final Color color;
  final IconData iconButtonSecondary;
  final Function onPressedFunc;

  const ButtonSecondary({
    super.key,
    required this.buttonSecondaryName,
    required this.color,
    required this.iconButtonSecondary,
    required this.onPressedFunc,
  });

  @override
  State<ButtonSecondary> createState() => _ButtonSecondaryState();
}

class _ButtonSecondaryState extends State<ButtonSecondary> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(22),
      color: widget.color,
      onPressed: () {
        widget.onPressedFunc();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.iconButtonSecondary),
          const SizedBox(width: 20),
          Text(
            widget.buttonSecondaryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
