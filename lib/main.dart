import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'ui/authentication/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intensive Club batch 18',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        scaffoldBackgroundColor: AppColors.white,
        dividerTheme: const DividerThemeData(color: AppColors.divider),
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.primary,
          elevation: 0,
          titleTextStyle: GoogleFonts.inter(
            color: AppColors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.white,
          ),
          centerTitle: true,
        ),
      ),
      home: const SplashPage(),
    );
  }
}
