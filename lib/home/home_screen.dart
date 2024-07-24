import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        //toolbarHeight: MediaQuery.of(context).size.height*0.18
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.0001),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lists'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded), label: 'Settings'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.18,
          )
        ],
      ),
    );
  }
}
