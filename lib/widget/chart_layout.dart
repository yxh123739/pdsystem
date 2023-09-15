import 'package:flutter/material.dart';

class ChartLayout extends StatelessWidget {
  const ChartLayout({
    super.key,
    required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232d37),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
