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
  const StandardBodyText(this.text, {super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
      textAlign: TextAlign.center,
    );
  }
}

class StandardHeadlineText extends StatelessWidget {
  const StandardHeadlineText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
