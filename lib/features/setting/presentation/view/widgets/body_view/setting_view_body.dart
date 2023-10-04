import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_sliver_list.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: TitleStandard(
                title: 'More',
                fontsize: 24,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            SliverToBoxAdapter(
              child: TitleStandard(
                title: 'Settings',
                fontsize: 14,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            SettingSliverList(),
          ],
        ),
      ),
    );
  }
}
