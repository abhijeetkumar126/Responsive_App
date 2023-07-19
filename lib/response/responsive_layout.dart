import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:response_app/response/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobilewidth) {
          return mobileBody;
        } else if (constraints.maxWidth < tabletwidth) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
