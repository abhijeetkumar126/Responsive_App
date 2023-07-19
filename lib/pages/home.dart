import 'package:flutter/material.dart';
import 'package:response_app/response/desktop_body.dart';
import 'package:response_app/response/mobile_body.dart';
import 'package:response_app/response/responsive_layout.dart';
import 'package:response_app/response/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
        tabletBody: MyTabletBody(),
      ),
    );
  }
}
