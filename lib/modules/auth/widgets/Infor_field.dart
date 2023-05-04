import 'package:clone_myapp/themes/app_colors.dart';
import 'package:clone_myapp/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InforField extends StatefulWidget {
  InforField({super.key, required this.controller,required this.hinText});
  final TextEditingController controller;
  final String hinText;

  @override
  State<InforField> createState() => _InforFieldState();
}

class _InforFieldState extends State<InforField> {
  final _focusNode = FocusNode();
  bool _isFocus = false;
  final _defaultBorder = Border.all(color: AppColors.primary300, width: 1);
  final _focusedBorder = Border.all(color: AppColors.primary400, width: 2);
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
            contentPadding: EdgeInsets.all(16)),
        style: TextStyles.t16R,
        focusNode: _focusNode,
      ),
    );
  }
}
