import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/home/presentation/view/home_view.dart';
import 'package:flutter_challenge/features/setting/presentation/view/setting_view.dart';

class TabBarStandard extends StatefulWidget {
  const TabBarStandard({super.key});

  @override
  State<TabBarStandard> createState() => _TabBarStandardState();
}

class _TabBarStandardState extends State<TabBarStandard>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:2 , vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.heart_broken),
            ),
            Tab(
              icon: Icon(Icons.swap_vertical_circle_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          HomeView(),
          SettingView(),
        ],
      ),
    );
  }
}
