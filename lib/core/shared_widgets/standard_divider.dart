import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';

class StandardDivider extends StatelessWidget {
  const StandardDivider({super.key, required this.length, required this.index});
  final int length;
  final int index;
  @override
  Widget build(BuildContext context) {
    if (index < length - 1) {
      return const MyDivider(
        indent: 16,
      );
    } else {
      return const MyDivider();
    }
  }
}
