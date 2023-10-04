import 'package:flutter/material.dart';

class SampleItem extends StatelessWidget {
  const SampleItem({super.key, required this.sample, this.isFavourite = false, required this.onPressed});
  final String sample;

  final bool isFavourite;
  final void Function() onPressed;

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
          IconButton(
              onPressed: onPressed,
              icon: isFavourite
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border_outlined))
        ],
      ),
    );
  }
}
