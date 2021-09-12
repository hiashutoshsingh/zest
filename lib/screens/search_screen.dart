import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/place_known_widget.dart';
import 'package:zest/widgets/trending_searches_widget.dart';

class SearchScreen extends StatefulWidget {
  static final String route = 'search_screen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _textEditingController,
              focusNode: _focusNode,
              style: AppTextStyles.regularTextStyle.copyWith(
                color: AppColor.lightWhite,
              ),
              decoration: InputDecoration(
                fillColor: Color(0xff242F3B),
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 16),
                hintStyle: AppTextStyles.regularTextStyle.copyWith(
                  color: AppColor.lightGrey,
                ),
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                hintText: 'Place Name, Activity or purpose',
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: AppColor.lightGrey,
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    _textEditingController.clear();
                    _focusNode.unfocus();
                  },
                  child: Icon(
                    Icons.clear_outlined,
                    size: 20,
                    color: AppColor.lightGrey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Previous Searches',
                    style: AppTextStyles.regularTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PlaceKnownList(),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: AppColor.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Trending in your City',
                    style: AppTextStyles.regularTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TrendingSearchesWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
