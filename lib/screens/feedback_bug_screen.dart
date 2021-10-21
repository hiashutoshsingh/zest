import 'package:flutter/material.dart';
import 'package:zest/data/args/feedback_bug_arg.dart';
import 'package:zest/theme/app_theme.dart';

class FeedbackBugScreen extends StatefulWidget {
  static final String route = 'feedback_bug_screen';

  @override
  _FeedbackBugScreenState createState() => _FeedbackBugScreenState();
}

class _FeedbackBugScreenState extends State<FeedbackBugScreen> {
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
    bool _isFeedback = false;
    final args = ModalRoute.of(context).settings.arguments as FeedbackBugArg;
    if (args != null && args.isFeedback) {
      _isFeedback = true;
    }

    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: AppColor.white,
          ),
        ),
        title: Text(
          _isFeedback ? 'Give us Feedback' : 'Report a Bug',
          style: AppTextStyles.regularTextStyle.copyWith(
            color: AppColor.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _isFeedback ? 'How are we doing?' : 'Have you faced any issue?',
                      style: AppTextStyles.semiBoldTextStyle.copyWith(
                        color: AppColor.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      _isFeedback
                          ? "We' re always working to improve the Zest experience, so we'd love to hear what's working and we can do better."
                          : "We' re always working to improve the Zest experience, so we'd love to hear if you face any issue while using the Zest App.",
                      style: AppTextStyles.regularTextStyle.copyWith(
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      _isFeedback ? 'Feedback' : 'Explain the Issue Faced',
                      style: AppTextStyles.regularTextStyle.copyWith(
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _textEditingController,
                      focusNode: _focusNode,
                      style: AppTextStyles.regularTextStyle.copyWith(
                        color: AppColor.lightWhite,
                      ),
                      minLines: 6,
                      maxLines: 6,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        hintStyle: AppTextStyles.regularTextStyle.copyWith(
                          color: AppColor.lightGrey,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.white,
                            width: .5,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.white,
                            width: .5,
                          ),
                        ),
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.white,
                            width: .5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.teal,
                  borderRadius: BorderRadius.circular(4),
                  gradient: new LinearGradient(
                    colors: [
                      AppColor.lightGreen,
                      AppColor.teal,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0) + EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      _isFeedback ? 'Submit Feedback' : 'Submit',
                      style: AppTextStyles.regularTextStyle.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
