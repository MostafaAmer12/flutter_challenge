import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_sliver_list_body.dart';

class SettingSliverList extends StatefulWidget {
  const SettingSliverList({super.key});

  @override
  State<SettingSliverList> createState() => _SettingSliverListState();
}

class _SettingSliverListState extends State<SettingSliverList> {
  List<String> setting = ['Dark Mode', 'Arabic Language'];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return SettingSliverBody(
            setting: setting[index],
            settingLength: setting.length,
            index: index,
          );
        },
        childCount: setting.length,
      ),
    );
  }
}
