import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/play_item.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_sliver_list.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: TitleStandard(
                title: 'This is App',
                fontsize: 24,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleStandard(
                    title: 'Top Likes',
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
                  const TitleStandard(
                    title: 'Top Likes',
                    fontsize: 14,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  PlayItem(onPressed: () {  },),
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
