import 'package:baggage_way_user_app/screens/home_page.dart';
import 'package:baggage_way_user_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baggage_way_user_app',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
