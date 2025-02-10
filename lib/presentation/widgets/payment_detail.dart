import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';


class PaymentDetail extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  final String status;

  const PaymentDetail({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.standard,
      contentPadding: const EdgeInsets.only(right: 10),
      leading: Container(
        padding: const EdgeInsets.all(10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon,
          width: 20,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          Text(
            status,
            style: const TextStyle(
              fontSize: 12,
              color: MyAppColor.secondary,
            ),
          ),
        ],
      ),
      trailing: Text(
        amount,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
