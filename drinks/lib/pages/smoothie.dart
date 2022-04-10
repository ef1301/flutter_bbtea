import '../colors.dart';
import 'package:flutter/material.dart';

class Smoothie extends StatefulWidget {
  const Smoothie({ Key? key }) : super(key: key);

  @override
  State<Smoothie> createState() => _SmoothieState();
}

class _SmoothieState extends State<Smoothie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Smoothie'),
    );
  }
}

