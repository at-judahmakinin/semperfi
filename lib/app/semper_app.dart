import 'package:flutter/material.dart';
import 'package:semperfi/ui/home/home_page.dart';

class SemperApp extends StatelessWidget {
  const SemperApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SemperFi',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      home: const HomePage(title: 'SemperFi'),
    );
  }
}
