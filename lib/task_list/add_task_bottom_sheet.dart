import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var selectedDate = DateTime.now();
  var fornKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.025,
          horizontal: MediaQuery.of(context).size.height * 0.06),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Add new Task",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0266,
            ),
            Form(
              key: fornKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        onChanged: (text) {
                          title = text;
                        },
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Please Enter Task Title';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter task title",
                          hintStyle: TextStyle(color: AppColors.grayColor),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.031,
                      ),
                      TextFormField(
                        onChanged: (text) {
                          description = text;
                        },
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Please Enter Task Description';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter task description",
                          hintStyle: TextStyle(color: AppColors.grayColor),
                        ),
                        maxLines: 4,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.031,
                      ),
                      Text(
                        'Select Date',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.017,
                      ),
                      InkWell(
                        onTap: () {
                          showCalender();
                        },
                        child: Text(
                          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.017,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            addTask();
                          },
                          child: Icon(
                            Icons.check,
                            color: AppColors.whiteColor,
                            size: 35,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            shape: CircleBorder(),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 356)));
    selectedDate = chosenDate ?? selectedDate;
    setState(() {});
  }

  void addTask() {
    if (fornKey.currentState?.validate() == true) {
      ///add task
    }
  }
}
