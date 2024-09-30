import 'package:flutter/material.dart';
import 'package:trackingsteps/Widgets/bottom_navigation.dart';
import 'package:trackingsteps/pages/home/widgets/activity.dart';
import 'package:trackingsteps/pages/home/widgets/current.dart';
import 'package:trackingsteps/pages/home/widgets/header.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}