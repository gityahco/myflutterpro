import 'package:flutter/material.dart';
// import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';
// import 'package:the_basics/widgets/navigation_bar/navbar_item.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_table_desktop.dart';

class MyNavigationBar extends StatelessWidget {
  MyNavigationBar();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
