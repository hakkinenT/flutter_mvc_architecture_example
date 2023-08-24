import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.child});

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _CustomElevatedButtonBody(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyanAccent[700],
            foregroundColor: Colors.black,
            textStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}

class _CustomElevatedButtonBody extends StatelessWidget {
  const _CustomElevatedButtonBody({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 52, width: double.maxFinite, child: child);
  }
}
