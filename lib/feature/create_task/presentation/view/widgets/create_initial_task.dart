import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/app_styles.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/view/widgets/custom_modal_bottom_sheet.dart';
import 'package:intl/intl.dart';

class CreateInitialTask extends StatelessWidget {
  const CreateInitialTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // create a bloc listner to hold this shit
        showModalBottomSheet(context: context, builder: (context) => CustomModalBottomSheet());
      },
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 52),
            height: 148,
            width: SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(AppImages.plus),
                      SizedBox(width: 12,),
                      Text(
                        'Tap plus to create a new task',
                        style: Styles.medium16(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Add your task',
                        style: Styles.regular12(context).copyWith(color: AppColor.textGrey),
                      ),
                      Text(
                        DateFormat('EEE dd MMM yyyy').format(DateTime.now()),
                        style: Styles.regular12(context).copyWith(color: AppColor.textGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 36,
            width: SizeConfig.responsiveWidth(context, 327),
            decoration: BoxDecoration(
              color: AppColor.teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(AppImages.flagOutline),
                SizedBox(width: 8),
                Text(
                  // changing from empty to priorty
                  "",
                  style: Styles.regular12(context,).copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}