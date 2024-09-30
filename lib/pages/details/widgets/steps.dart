// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackingsteps/helpers.dart';

class Steps extends StatelessWidget {
  const Steps ({super.key});

  @override
  Widget build(BuildContext context) {

String steps = formatNumber(randNumberBetween(3000, 6000));

    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            steps,
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w900,
             ),
             ),
             Text(
              'Total Steps',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            height: 2,
        ),
      ),
        ],
      ),
    );
}
}