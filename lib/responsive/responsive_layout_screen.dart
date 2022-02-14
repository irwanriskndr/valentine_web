import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopLayout;
  final Widget mobileLayout;
  const ResponsiveLayout({
    Key? key,
    required this.desktopLayout,
    required this.mobileLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return desktopLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}
