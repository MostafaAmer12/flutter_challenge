import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/shared_widgets/standard_divider.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_item.dart';

class SettingSliverBody extends StatelessWidget {
  const SettingSliverBody(
      {super.key,
      required this.setting,
      required this.settingLength,
      required this.index});
  final String setting;
  final int settingLength;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SettingItem(
            settingName: setting,
            onPressed: () {},
          ),
        ),
        StandardDivider(
          length: settingLength,
          index: index,
        ),
      ],
    );
  }
}
