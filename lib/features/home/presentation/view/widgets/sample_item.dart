import 'package:flutter/material.dart';

class SampleItem extends StatelessWidget {
  const SampleItem({super.key, required this.sample});
  final String sample;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(sample),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken))
        ],
      ),
    );
  }
}
