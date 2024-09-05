import 'package:flutter/material.dart';

class StandardSubtitleText extends StatelessWidget {
  const StandardSubtitleText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}

class StandardBodyText extends StatelessWidget {
  const StandardBodyText(
    this.text, {
    super.key,
    this.color,
    this.padding,
  });

  final String text;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
      ),
    );
  }
}

class StandardHeadlineText extends StatelessWidget {
  const StandardHeadlineText(
    this.text, {
    super.key,
    this.weight,
  });

  final String text;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(fontWeight: weight),
    );
  }
}
