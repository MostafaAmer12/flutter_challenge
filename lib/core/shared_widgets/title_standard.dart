import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';

class TitleStandard extends StatelessWidget {
  const TitleStandard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 12,
            top: 30,
          ),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const MyDivider(),
      ],
    );
  }
}
