import 'package:flutter/material.dart';
import 'package:trackingsteps/Widgets/bottom_navigation.dart';
import 'package:trackingsteps/pages/details/widgets/appbar.dart';
import 'package:trackingsteps/pages/details/widgets/dates.dart';
import 'package:trackingsteps/pages/details/widgets/graph.dart';
import 'package:trackingsteps/pages/details/widgets/info.dart' hide Stats;
import 'package:trackingsteps/pages/details/widgets/stats.dart';
import 'package:trackingsteps/pages/details/widgets/steps.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(appBar: AppBar()),
      body: const Column(
        children: [
          Dates(),
          Graph(),
          Info(),
          Divider(height: 30),
          Stats(),
          SizedBox(height: 30),
          Steps(),
          BottomNavigation(),
        ],

      ),
    );
  }
}

