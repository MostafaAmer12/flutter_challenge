import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/home/presentation/view/home_view.dart';
import 'package:flutter_challenge/features/setting/presentation/view/setting_view.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = S.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(
        children: [
          const Expanded(
            child: TabBarView(
              children: [
                HomeView(),
                SettingView(),
              ],
            ),
          ),
          TabBar(
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    const Icon(Icons.home),
                    Text(
                      cont.TabBar1,
                      style: const TextStyle(fontSize: 8),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    const Icon(Icons.more),
                    Text(
                      cont.TabBar2,
                      style: const TextStyle(fontSize: 8),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
