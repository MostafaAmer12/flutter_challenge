import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/home/presentation/view/home_view.dart';
import 'package:flutter_challenge/features/setting/presentation/view/setting_view.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
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
                    Icon(Icons.home),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.more),
                    Text(
                      'More',
                      style: TextStyle(fontSize: 8),
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
