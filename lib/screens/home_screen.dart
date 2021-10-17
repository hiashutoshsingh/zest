import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:zest/data/provider/home_provider.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/home_app_bar.dart';
import 'package:zest/widgets/list_popular_things_widget.dart';
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
    SchedulerBinding.instance.addPostFrameCallback((timings) {
      Provider.of<HomeProvider>(context, listen: false).fetchCategories();
      Provider.of<HomeProvider>(context, listen: false).fetchActivities();
    });
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
              child: Consumer<HomeProvider>(
                builder: (BuildContext pContext, homeProvider, Widget child) {
                  if (homeProvider.categoryLoading ||
                      homeProvider.activityLoading ||
                      homeProvider.categoryListResponse == null ||
                      homeProvider.activityListResponse == null) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CategoryList(homeProvider.categoryListResponse),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: PlacesListWidget(
                            isHomeScreen: true,
                            activityListResponse: homeProvider.activityListResponse,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
