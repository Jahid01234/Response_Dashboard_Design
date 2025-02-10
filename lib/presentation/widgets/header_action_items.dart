import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderActionItems extends StatelessWidget {
  const HeaderActionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/images/calendar.svg",
            width: 20,
          ),
        ),
        const SizedBox(width: 10),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/notification.svg",
                width: 20,
              ),
            ),
            const Positioned(
              top: 7,
              right: 8,
              child: CircleAvatar(
                radius: 3,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        const Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage(
                      "assets/images/jahid_pic.jpg",
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(width: 5),
            RotatedBox(
              quarterTurns: 7,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5),
          ],
        ),
      ],
    );
  }
}
