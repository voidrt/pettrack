import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class LineIconButton extends StatelessWidget {
  const LineIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.margin,
    this.roundness = 20.0,
  });

  final VoidCallback onTap;
  final IconData icon;
  final double roundness;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(8),
        margin: margin ??
            const EdgeInsets.symmetric(
              horizontal: Paddings.veryBig,
              vertical: Paddings.extraSmall,
            ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(roundness),
        ),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: foregroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
