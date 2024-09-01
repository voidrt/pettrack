import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
    this._controller, {
    super.key,
    required this.labelText,
    required this.obscureText,
    this.icon,
    this.hintText,
    this.foregroundColor,
    this.padding,
  });

  final TextEditingController _controller;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final Icon? icon;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            vertical: Paddings.small,
            horizontal: Paddings.big,
          ),
      child: TextField(
        controller: widget._controller,
        obscureText: widget.obscureText,
        style: theme.textTheme.labelMedium!.copyWith(
          color: widget.foregroundColor ?? Colors.black,
        ),
        decoration: InputDecoration(
          label: StandardBodyText(widget.labelText),
          labelStyle: Theme.of(context).textTheme.labelMedium,
          hintText: widget.hintText,
          hintStyle: theme.textTheme.labelMedium!.copyWith(
            color: widget.foregroundColor ?? theme.colorScheme.inverseSurface,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.foregroundColor ?? theme.colorScheme.secondary,
            ),
          ),
          icon: widget.icon,
        ),
      ),
    );
  }
}
