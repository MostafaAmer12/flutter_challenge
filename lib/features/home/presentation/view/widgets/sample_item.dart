import 'package:flutter/material.dart';

class SampleItem extends StatefulWidget {
  const SampleItem({
    super.key,
    required this.sample,
  });
  final String sample;

  @override
  State<SampleItem> createState() => _SampleItemState();
}

class _SampleItemState extends State<SampleItem> {
  bool isFavorite = false;
  onpressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.sample),
          ),
          IconButton(
              onPressed: () {
                onpressed();
              },
              icon: isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    ))
        ],
      ),
    );
  }
}
