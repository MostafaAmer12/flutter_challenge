import 'package:flutter/material.dart';

class PlayItem extends StatelessWidget {
  const PlayItem({super.key, this.isPlaying = false,required this.onPressed});

  final bool isPlaying;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: onPressed,
              icon: isPlaying
                  ? const Icon(Icons.pause_circle_outline_outlined)
                  : const Icon(Icons.play_circle_outline_outlined)),
          const Text('Play This'),
        ],
      ),
    );
  }
}
