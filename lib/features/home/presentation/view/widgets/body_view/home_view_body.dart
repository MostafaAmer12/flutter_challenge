import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/play_item.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_sliver_list.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = S.of(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: TitleStandard(
                title: cont.HomeAppBar,
                fontsize: 24,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleStandard(
                    title: cont.Likes,
                    fontsize: 14,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
            ),
            const SampleSliverList(),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TitleStandard(
                    title: cont.Likes,
                    fontsize: 14,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  const PlayItem(),
                  const MyDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
