// ignore_for_file: prefer_typing_uninitialized_variables, null_check_always_fails

import 'package:flutter/material.dart';
import 'package:trackingsteps/models/fitness_program.dart';

class CurrentPrograms extends StatefulWidget {
  const CurrentPrograms({super.key});

  @override
  State<CurrentPrograms> createState() => _CurrentProgramsState();
}

class _CurrentProgramsState extends State<CurrentPrograms> {
  Null active = fitnessProgram[0].type;
  
  var index;
   
   void _changeProgram(ProgramType newType){
    setState((){
   active = newType as Null; 
  });
   }

  @override
  Widget build(BuildContext context) {
    return Column(
      children : [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20, 
            horizontal: 30,
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Current Programs',
            style:Theme.of(context).textTheme.displayLarge,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15
            ),
          ],),
        ),
  
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: fitnessProgram.length,
            itemBuilder: (context, index) {
              return Program(
                program: fitnessProgram[index],
                active: fitnessProgram[index].active == active,
                onTap: _changeProgram,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
      ],

    );
  }
}

class ProgramType {
}

class Program extends StatelessWidget {
  final FitnessProgram program;
  final bool active;
  final Function(ProgramType) onTap;

  const Program({super.key,
   required this.program,
   this.active = false, 
   required this.onTap,
  );
  


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(program.type!);
      },
      child: Container(
        height: 100,

        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: const ColorFilter.mode(Color(0xff1ebdf8),
            BlendMode.lighten,
            ),
      
            image: program.image,
            fit: BoxFit.cover,
            )
        ),
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(15),
        child: DefaultTextStyle.merge(
          style: const TextStyle(color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('program.name'),
              Row(children: [
                Text('program.cals'),
                SizedBox(width: 15),
                Icon(Icons.timer, 
                size: 10,
                color: Colors.white,
                ),
                SizedBox(width: 5),
                Text('program.time'),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}