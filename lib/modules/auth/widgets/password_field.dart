import 'package:clone_myapp/themes/app_colors.dart';
import 'package:clone_myapp/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PasswordField extends StatefulWidget {
  PasswordField({super.key, required this.controller,required this.hinText});
  final TextEditingController controller;
  final String hinText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _focusNode = FocusNode();
  bool _isFocus = false;
  final _defaultBorder = Border.all(color: AppColors.primary300, width: 1);
  final _focusedBorder = Border.all(color: AppColors.primary400, width: 2);
  bool _obscureText = true;
  @override
  void initState() {
    _focusNode.addListener(_onFocusChange);
    super.initState();
  }

  void _onFocusChange() {
    setState(() {
      _isFocus = _focusNode.hasFocus;
    });
  }

  void _onObscureChange() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: _isFocus ? _focusedBorder : _defaultBorder,
            borderRadius: BorderRadius.circular(8),
            color: Colors.white),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hinText,
            contentPadding: EdgeInsets.all(16),
            suffixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: GestureDetector(
                onTap: _onObscureChange,
                child: _obscureText
                    ? Icon(
                        Icons.remove_red_eye,
                        color: Colors.black54,
                      )
                    : Icon(Icons.visibility_off, color: Colors.black54),
              ),
            ),
          ),
          style: TextStyles.t16R,
          focusNode: _focusNode,
          obscureText: _obscureText,
        ));
  }
}
