import 'package:core/core.dart';
import 'package:doctor_app/dashboard/home_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard/models/patient.dart';
import 'dashboard/patient_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: PatientDetailsScreen(Patient('PHD-1234', 'Salil Godbole', 33, 'Male')),
      // home: HomeScreen(),
    );
  }
}
