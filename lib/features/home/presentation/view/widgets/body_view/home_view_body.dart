import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/utils/divider.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/play_item.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_sliver_list.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is App'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyDivider(),
                    TitleStandard(
                      title: 'Top Likes',
                    ),
                  ],
                ),
              ),
              SampleSliverList(),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    TitleStandard(
                      title: 'Top Likes',
                    ),
                    PlayItem(),
                    MyDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
