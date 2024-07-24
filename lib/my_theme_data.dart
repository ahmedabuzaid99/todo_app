import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/app_colors.dart';

class MyThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primaryColor,
      showUnselectedLabels: false,
      unselectedItemColor: AppColors.grayColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      shape: StadiumBorder(
          side: BorderSide(color: AppColors.whiteColor, width: 4)),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(32),
      //   side: BorderSide(
      //     color: AppColors.whiteColor,
      //     width: 4
      //   ),
      // ),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,
    )),
  );
}
