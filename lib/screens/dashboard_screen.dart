import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Portfolio"),
        backgroundColor: appBarColor,
      ),
      body: const Center(
        child: Text("Code Here!"),
      ),
    );
  }
}
