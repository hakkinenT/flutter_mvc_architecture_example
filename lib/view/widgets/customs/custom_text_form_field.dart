import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.controller,
      this.validator,
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.initialValue,
      this.inputFormatters,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.keyboardType,
      this.textInputAction});

  final String hintText;
  final String labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode autovalidateMode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(color: Colors.cyan[700]!));

    return _CustomTextFormFieldBody(
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black38),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.cyan[700]),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: border,
        ),
      ),
    );
  }
}

class _CustomTextFormFieldBody extends StatelessWidget {
  const _CustomTextFormFieldBody({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: child,
    );
  }
}
