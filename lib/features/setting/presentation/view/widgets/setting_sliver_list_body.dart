import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_language_item.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_theme_item.dart';

class SettingSliverBody extends StatelessWidget {
  const SettingSliverBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: SettingThemeItem(),
        ),
        MyDivider(
          indent: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: SettingLanguageItem(),
        ),
        MyDivider(),
      ],
    );
  }
}
