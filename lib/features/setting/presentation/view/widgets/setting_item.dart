import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.settingName});
final String settingName;
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.swap_vertical_circle_sharp))
        ],
      ),
    );
  }
}