import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget widget;

  const MainLayout({
    required this.widget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget,
    );
  }
}
