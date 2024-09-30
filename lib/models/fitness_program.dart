import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:trackingsteps/pages/home/widgets/current.dart';

class FitnessProgram {

  final AssetImage image;
  final String name;
  final String cals;
  final String time;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time
    
    });

  Null get type => null;
}


final List<FitnessProgram> fitnessProgram = [
  FitnessProgram(
  image: const AssetImage('assets/walking.jpg'), 
  name: 'Cardio', 
  cals: '220kkal', 
  time: '20min',
  ),
  FitnessProgram(
  image: const AssetImage('assets/gym.jpg'), 
  name: 'Barbel ', 
  cals: '220kkal', 
  time: '20min',
  ),
];