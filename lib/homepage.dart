import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DateTime today=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
      ),
      body: SafeArea(child: Container(
        child:TableCalendar(
          
          focusedDay: today,
           firstDay: DateTime.utc(1900, 01, 01), 
           lastDay: DateTime.utc(2099, 12, 31 ),
           rowHeight: 35,
          headerStyle: HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,

          ),
          onDaySelected: _ondayselected,
          selectedDayPredicate: (day) => isSameDay(day, today),),
      )),
    );
  }

  void _ondayselected(DateTime selectedDay,
   DateTime focusedDay) {
    setState(() {
      today=selectedDay;

    });
  }
}