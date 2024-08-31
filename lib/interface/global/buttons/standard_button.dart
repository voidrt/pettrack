import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class StandardButton extends StatelessWidget {
  const StandardButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.margin,
    this.roundness = 50.0,
    this.leadingIcon,
  });

  final VoidCallback onTap;
  final String text;
  final double roundness;
  final IconData? leadingIcon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(
          horizontal: margin ?? Paddings.veryBig,
          vertical: Paddings.extraSmall,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(roundness),
        ),
        child: Center(
          child: Stack(
            children: [
              Visibility(
                visible: leadingIcon != null,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: Paddings.extraSmall),
                    child: Icon(leadingIcon),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: StandardBodyText(
                  text,
                  color: foregroundColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
