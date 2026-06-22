import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ecommerce_app/core/util/app_color.dart';
import 'package:food_ecommerce_app/core/util/app_image.dart';
import 'package:food_ecommerce_app/core/util/size_cofig.dart';
import 'package:food_ecommerce_app/feature/create_task/presentation/create_task_view.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/home_page_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function onTap;
  final int currentIndex;
  final List<Widget> screens;
  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.screens,
    super.key,
  });
  final PersistentTabController _controller =  PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,
      items: _navBarsItems(),
      navBarHeight: SizeConfig.responsiveHeight(context, 54),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 600),
          curve: Curves.ease,
          
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          duration: Duration(milliseconds: 600),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      // confineToSafeArea: true,
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.home, height: 24,),
        activeColorPrimary: AppColor.greenTeal,
        inactiveColorPrimary: AppColor.buttonGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
       PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.inbox, height: 24,),
        activeColorPrimary: AppColor.greenTeal,
        inactiveColorPrimary: AppColor.buttonGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
       PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.calendar, height: 24,),
        activeColorPrimary: AppColor.greenTeal,
        inactiveColorPrimary: AppColor.buttonGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
       PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.category, height: 24,),
        activeColorPrimary: AppColor.greenTeal,
        inactiveColorPrimary: AppColor.buttonGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
       PersistentBottomNavBarItem(
        icon: SvgPicture.asset(AppImages.paper, height: 24,),
        activeColorPrimary: AppColor.greenTeal,
        inactiveColorPrimary: AppColor.buttonGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const CreateTaskView(),
            "/second": (final context) => const Center(child: Text('inbox')),
            "/third": (final context) => const Center(child: Text('calendar')),
            "/fourth": (final context) => const Center(child: Text('Widget')),
            "/fifth": (final context) => const Center(child: Text('paper')),
          },
        ),
      ),
    ];
  }
}
