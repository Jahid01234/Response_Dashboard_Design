import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data/model/model.dart';
import 'package:responsive_dashboard/presentation/widgets/bar_chart_representation.dart';
import 'package:responsive_dashboard/presentation/widgets/header_parts.dart';
import 'package:responsive_dashboard/presentation/widgets/show_history.dart';
import 'package:responsive_dashboard/presentation/widgets/side_drawer_menu.dart';
import 'package:responsive_dashboard/presentation/widgets/transfer_info_card.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';

class DashboardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyAppColor.backgroundColor,
      key: drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideDrawerMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  drawerKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            )
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideDrawerMenu(),
              ),
            Expanded(
              flex: 10,
              child: SafeArea(
                child: SingleChildScrollView(
                  padding:  Responsive.isDesktop(context)
                      ? const EdgeInsets.symmetric(
                          vertical: 30,horizontal: 30,
                        )
                       : const EdgeInsets.symmetric(
                          vertical: 15,horizontal: 15,
                        ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //1st:- Dashboard text, Search bar section....
                      const HeaderParts(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      //2nd:- Transfer Info Card section....
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          alignment: WrapAlignment.spaceBetween,
                          children: infoCardData.map((info){
                            return TransferInfoCard(infoCardModel: info);
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 5,
                      ),
                      // 3rd:- Balance and Past 30 days text section....
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Balance",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: MyAppColor.secondary,
                                ),
                              ),
                              Text(
                                "\$1500",
                                style: TextStyle(
                                  fontSize: Responsive.isDesktop(context) ?30:20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                           Text(
                            "PAST 30 DAYS",
                            style: TextStyle(
                              fontSize: Responsive.isDesktop(context) ?16:14,
                              color: MyAppColor.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      // 4th:- Bar chart representation section....
                      const SizedBox(
                        height: 180,
                        child: BarChartRepresentation(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 5,
                      ),
                      // 5th:- History and Transaction of last 6 months text section....
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "History",
                            style: TextStyle(
                              fontSize: Responsive.isDesktop(context) ?30:20,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Text(
                            "Transaction of last 6 months",
                            style: TextStyle(
                              fontSize: 16,
                              color: MyAppColor.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      // 6th:- Show history section....
                      const ShowHistory(),



                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
