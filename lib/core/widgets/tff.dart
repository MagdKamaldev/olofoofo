// ignore_for_file: library_private_types_in_public_api
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  const AppTextField({
    super.key,
    required this.controller,
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
                height: 55,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: ColorManager.primary),
                    borderRadius: BorderRadius.circular(10),
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
                   //   hintText: widget.hintText,

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
