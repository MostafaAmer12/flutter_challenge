import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key, required this.settingName, required this.onPressed, this.isTrue=false});
  final String settingName;
  final void Function() onPressed;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(settingName),
          ),
          IconButton(
            onPressed: onPressed,
            icon: isTrue
                ? const Icon(
                    Icons.toggle_on_outlined,
                    color: Colors.deepPurpleAccent,
                  )
                : const Icon(
                    Icons.toggle_off_outlined,
                  ),
          )
        ],
      ),
    );
  }
}
