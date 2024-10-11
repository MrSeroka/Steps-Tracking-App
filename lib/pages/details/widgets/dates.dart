import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:trackingsteps/helpers.dart';

class Info extends StatelessWidget {
  const Info ({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBoxes = [];
//DateTime date = DateTime.parse('2024-09-23');
    DateTime date = DateTime.now().subtract(const Duration(days: 3));

    for  (int i = 0; i < 6; i++) {
        dateBoxes.add(DateBox(date: date, active: 1 == 3,));
        date = date.add(const Duration(days: 1));
      }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dateBoxes,

      ),
    );
    
  }
}

class DateBox extends StatelessWidget {
  
final bool active;
final DateTime date;

  const DateBox({
    super.key,
    this.active = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      decoration: BoxDecoration(
        gradient: active? const LinearGradient(
          colors: [
          Color(0xff92e2ff),
          Color(0xff1ebdf8),
        ],
        begin: Alignment.topCenter)
        : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffe1e1e1),
          ),
              ),
      
      
      child: DefaultSelectionStyle.merge(
        selectionColor: active ? Colors.white : Colors.grey,
        child: 
        Text(
         active ? 'Active' : 'Inactive',
         style: active ? const TextStyle(color: Colors.white) : null,
        ),
        ),
  
    

        Column(
          children: [
            Text(
              daysOfWeek[date.weekday]!,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              ),
              
              const SizedBox(height: 8),
              Text(
                date.day.toString().padLeft(2, '0'),
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
                ),
          ],
      ),;
        
  }
}