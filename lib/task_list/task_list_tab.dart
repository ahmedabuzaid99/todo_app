import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/task_list/task_list_item.dart';

class TaskListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EasyDateTimeLine(
            locale: 'en',
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
            },
            activeColor: const Color(0xff116A7B),
            dayProps: const EasyDayProps(
              landScapeMode: true,
              activeDayStyle: DayStyle(
                borderRadius: 48.0,
              ),
              dayStructure: DayStructure.dayStrDayNum,
            ),
            headerProps: const EasyHeaderProps(
              dateFormatter: DateFormatter.fullDateDMonthAsStrY(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TaskListItem();
              },
              itemCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
