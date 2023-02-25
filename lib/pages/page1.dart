import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavigationDrawer(),
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: const Text("Page 1"),
      ),
    );
  }
}
