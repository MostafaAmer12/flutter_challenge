import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/shared_widgets/title_standard.dart';
import 'package:flutter_challenge/features/setting/presentation/view/widgets/setting_sliver_list.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
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
                    TitleStandard(
                      title: 'Settings',
                    ),
                  ],
                ),
              ),
              SettingSliverList(),
            ],
          ),
        ),
      ),
    );
  }
}
