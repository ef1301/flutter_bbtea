import 'package:flutter/material.dart';

import '../colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: AppColor.navigationTopBarBackground,
        elevation: 0,
        centerTitle: true,
      )
    );
  }
}