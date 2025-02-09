import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  /// Widget to show for mobile screens (320px - 767px).
  /// Optional widget to show for tablet screens (768px - 1024px).
  /// Widget to show for desktop screens (1025px and above).
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    this.tablet,
    required this.mobile,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 767;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1025;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if(size.width >=1025){
      return desktop;
    }else if(size.width >=768 && tablet !=null){
      return tablet!;
    }else{
      return mobile;
    }
  }
}
