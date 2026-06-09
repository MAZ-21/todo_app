import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function onTap;
  final int currentIndex;
  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(
        color: AppColor.teal,
      ),
      unselectedItemColor: AppColor.buttonGrey,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.inbox),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.calendar),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.category),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppImages.paper),
          label: "",
        ),
      ],
      onTap: (index){
        onTap(index);
      }
    );
  }
}