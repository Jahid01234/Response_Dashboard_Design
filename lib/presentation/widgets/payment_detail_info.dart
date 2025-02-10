import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data/model/model.dart';
import 'package:responsive_dashboard/presentation/widgets/payment_detail.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';

class PaymentDetailInfo extends StatelessWidget {
  const PaymentDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(
           height: SizeConfig.blockSizeVertical * 4,
         ),

         // 1st:- payment card section..........
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             boxShadow: [
               BoxShadow(
                 color: Colors.grey[400]!,
                 blurRadius: 15,
                 offset: const Offset(10, 15)
               ),
             ],
           ),
           child: Image.asset("assets/images/card.png"),
         ),
         SizedBox(
           height: SizeConfig.blockSizeVertical * 5,
         ),

         // 2nd:- Recent Activities and 02 Mar 2021 text section..........
         const Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               "Recent Activities",
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w900,
                 color: Colors.black,
               ),
             ),
             Text(
               "02 Mar 2021",
               style: TextStyle(
                 color: MyAppColor.secondary,
               ),
             )
           ],
         ),
         SizedBox(
           height: SizeConfig.blockSizeVertical * 2,
         ),

         // 3rd:- payment history section..........
         Column(
           children: List.generate(
             recentActivities.length, (index) {
             final activity = recentActivities[index];
              return PaymentDetail(
                icon: activity.icon,
                label: activity.label,
                amount: activity.amount,
                status: activity.status,
              );
            },
           ),
         ),
         SizedBox(
           height: SizeConfig.blockSizeVertical * 5,
         ),

         // 4th:- Upcoming Payments text section...........
         const Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               "Upcoming Payments",
               style: TextStyle(
                 fontSize: 18,
                 height: 1.3,
                 fontWeight: FontWeight.w900,
                 color: MyAppColor.primary,
               ),
             ),
             Text(
               "02 Mar 2021",
               style: TextStyle(
                 height: 1.3,
                 color: MyAppColor.secondary,
               ),
             )
           ],
         ),
         SizedBox(
           height: SizeConfig.blockSizeVertical * 2,
         ),

         // 6th:- Payment history section...........
         Column(
           children: List.generate(
             upcomingPayments.length, (index) {
             final payments = upcomingPayments[index];
             return PaymentDetail(
               icon: payments.icon,
               label: payments.label,
               amount: payments.amount,
               status: payments.status,
             );
            },
           ),
         ),
       ],
    );
  }
}
