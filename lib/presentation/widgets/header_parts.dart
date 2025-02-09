import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        // Dashboard Text section.....
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ?30:20,
                  color: MyAppColor.primary,
                  fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Payments Updated",
              style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ?16:14,
                color: MyAppColor.secondary,
              ),
            ),
          ],
        ),
        const Spacer(),
        // Search bar section.....
        Expanded(
           flex: Responsive.isDesktop(context) ? 1 : 3,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(left: 5,right: 5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.black),
              ),
            ),
        ),
      ],
    );
  }
}
