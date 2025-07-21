import 'package:flutter/material.dart';

class BgColor extends StatelessWidget {
  final Widget child;

  const BgColor({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.withValues(alpha: 0.1),
      child: child,
    );
  }
}
