// import 'package:flutter/material.dart';
// import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_sliver_list_body.dart';
// import 'package:flutter_challenge/generated/l10n.dart';

// class SettingSliverList extends StatefulWidget {
//   const SettingSliverList({super.key});

//   @override
//   State<SettingSliverList> createState() => _SettingSliverListState();
// }

// class _SettingSliverListState extends State<SettingSliverList> {
//   @override
//   Widget build(BuildContext context) {
//       final cont=S.of(context);
//     List<String> setting = [cont.DarkMode, cont.ArabicLanguage,];
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int index) {
//           return SettingSliverBody(
//             setting: setting[index],
//             settingLength: setting.length,
//             index: index,
//           );
//         },
//         childCount: setting.length,
//       ),
//     );
//   }
// }
