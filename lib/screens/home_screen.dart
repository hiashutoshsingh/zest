import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/home_app_bar.dart';
import 'package:zest/widgets/popular_things_widget.dart';
import 'package:zest/widgets/things_list.dart';

class HomeScreen extends StatefulWidget {
  static final String route = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ThingsList(),
                  ),
                  Expanded(
                    flex: 5,
                    child: PopularThingsWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
