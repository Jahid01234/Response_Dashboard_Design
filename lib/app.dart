import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/screen/dashboard_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Responsive Dashboard",
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}