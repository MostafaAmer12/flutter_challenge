import 'package:flutter/material.dart';

class PlayItem extends StatelessWidget {
  const PlayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
          const Text('Play This'),
        ],
      ),
    );
  }
}
