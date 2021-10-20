import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/activity_list_widget.dart';

class CategoryListingScreen extends StatelessWidget {
  static final String route = 'category_listing_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.black,
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16) + EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Adventure and Outdoor',
                      style: AppTextStyles.thinTextStyle,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _category('index ${index + 1}'),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        flex: 12,
                        child: ActivityListWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _category(String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.white,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0) + EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          title,
          style: AppTextStyles.thinTextStyle,
        ),
      ),
    );
  }
}
