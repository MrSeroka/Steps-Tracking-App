import 'dart:math';

import 'package:flutter/material.dart';

class RecentActivities extends StatefulWidget {
  const RecentActivities({super.key});

  @override
  State<RecentActivities> createState() => _RecentActivitiesState();
}

class _RecentActivitiesState extends State<RecentActivities> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, 
        horizontal: 30,
        ),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text (
              'Recent Activities',
              style: Theme.of(context).textTheme.displayLarge,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Activityitem(),
                  ),
              )
          ],
        ),
      ));
    
  }
}

// ignore: non_constant_identifier_names
Activityitem() {
}

class ActivityItem  extends StatelessWidget {
  const ActivityItem ({super.key});

static const activities = [
  'Running',
  'Walking',
  'Hiking',
  'Stairs Climbing'
];

  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    String activity = activities[Random().nextInt(activities.length)];

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/details');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffe1e1e1),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffcff2ff),
            ),
            height: 35,
            width: 35,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/walking.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            'activity', 
            style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w900,
          ),
          ),
          const Expanded(child: SizedBox(),
          ),
          const Icon(Icons.timer, size: 12),
          const SizedBox(width: 5),
          const Text(
            '30min',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.wb_sunny_outlined, size: 12),
          const SizedBox(width: 5),
          const Text(
            '55kcal',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
          ),
      const SizedBox(
        width: 20,
      ),
        ],
        ),
      ),
    );
  }
}