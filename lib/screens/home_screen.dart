import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static final String route = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      drawer: Container(
        color: Colors.red,
        width: 200,
      ),
      appBar: AppBar(
        backgroundColor: AppColor.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.lightBlack,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: 24,
                  color: AppColor.lightOrange,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
