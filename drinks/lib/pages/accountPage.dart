import '../colors.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
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
      ),
      body: Container(
        
      )
    );
  }
}