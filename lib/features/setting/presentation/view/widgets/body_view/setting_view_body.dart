import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_sliver_list_body.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
      final cont=S.of(context);
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: TitleStandard(
                title: cont.MoreAppBar,
                fontsize: 24,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            SliverToBoxAdapter(
              child: TitleStandard(
                title: cont.Settings,
                fontsize: 14,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            // const SettingSliverList(),
            const SliverToBoxAdapter(child: SettingSliverBody(),)
          ],
        ),
      ),
    );
  }
}
