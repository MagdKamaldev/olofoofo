// ignore_for_file: library_private_types_in_public_api

import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.isPassword,
  });

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: FormField<String>(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Please enter a valid value";
          }
          return null;
        },
        builder: (FormFieldState<String> field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(0.00, -1.00),
                    end: const Alignment(0, 1),
                    colors: [Colors.white, Colors.white.withOpacity(0)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFAAB0B7)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: TextFormField(
                    keyboardType: widget.keyboardType,
                    controller: widget.controller,
                    obscureText: widget.isPassword && !_isPasswordVisible,
                    onChanged: (value) {
                      field.didChange(value);
                    },
                    decoration: InputDecoration(
                      suffixIcon: widget.isPassword
                          ? IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 25,
                                color: const Color(0xFFAAB0B7),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            )
                          : null,
                      border: InputBorder.none,
                      hintText: widget.hintText,
                    //  hintStyle: TextStyles.heading2.copyWith(
                     //   color: const Color(0xFFAAB0B7),
                    //  ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      errorStyle: const TextStyle(height: 0),
                    ),
                  ),
                ),
              ),
              if (field.hasError)
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8),
                  child: Text(
                    field.errorText!,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
