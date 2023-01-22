import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class CScreen extends StatefulWidget {
  const CScreen({Key? key}) : super(key: key);

  @override
  State<CScreen> createState() => _CScreenState();
}

class _CScreenState extends State<CScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Shopping Menu"),
      ),
      body: const Center(
      child: RiveAnimation.asset(
        'assets/animation.riv',
        fit: BoxFit.fitWidth,
      )
    ));
  }
}

