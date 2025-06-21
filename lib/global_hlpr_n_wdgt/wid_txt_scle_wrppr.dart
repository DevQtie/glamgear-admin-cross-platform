import 'package:flutter/material.dart';

class RetainTextScaleWrapper extends StatelessWidget {
  final Widget child;
  const RetainTextScaleWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1)),
        child: child);
  }
}
