import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      var textalignment =
          SizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;

      double descriptionSize =
          SizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB. \nTHE BASICS",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1,
                    fontSize: titleSize),
                textAlign: textalignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'this is my website I hope you find it useful, if so, please let me know what you think and what is your suggestions to improve the website',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textalignment,
              )
            ]),
      );
    });
  }
}
