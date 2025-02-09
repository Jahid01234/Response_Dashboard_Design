import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data/model/model.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';

class TransferInfoCard extends StatelessWidget {
  final InfoCardModel infoCardModel;

  const TransferInfoCard({
    super.key,
    required this.infoCardModel,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
        right: Responsive.isMobile(context) ? 10 : 20,
      ),
      constraints: BoxConstraints(
        minWidth: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width / 7
            : SizeConfig.screenWidth / 2.5,
        maxWidth: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width / 7
            : SizeConfig.screenWidth / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(infoCardModel.icon,width: 35),
              const Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.more_vert,color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            infoCardModel.label,
            style: const TextStyle(
              fontSize: 16,
              color: MyAppColor.secondary,
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            infoCardModel.amount,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
