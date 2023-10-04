import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';

class TitleStandard extends StatelessWidget {
  const TitleStandard({
    super.key,
    required this.title,
    required this.fontsize,
    required this.crossAxisAlignment,
  });
  final String title;
  final double fontsize;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 12,
            top: 30,
          ),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize),
          ),
        ),
        const MyDivider(),
      ],
    );
  }
}
