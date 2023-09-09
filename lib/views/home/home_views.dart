import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/home/home_content_desktop.dart';
import 'package:the_basics/views/home/home_content_mobile.dart';
// import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/centered_view/centered_view.dart';
// import 'package:the_basics/widgets/course_details/course_details.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) => Scaffold(
        drawer: SizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
            child: Column(children: [
          MyNavigationBar(),
          Expanded(
              child: ScreenTypeLayout(
            mobile: HomeContentMobile(),
            desktop: HomeContentDesktop(),
          ))
        ])),
      ),
    );
  }
}
