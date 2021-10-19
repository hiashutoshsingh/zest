import 'package:dio/src/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zest/theme/app_theme.dart';

import 'app_logger.dart';

class Common {
  static void signInWithGoogle(Function(bool, UserCredential) loggingInCallback) async {
    loggingInCallback(true, null);
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn().catchError((e) {
      loggingInCallback(false, null);
      return null;
    });

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser?.authentication?.catchError((e) {
      loggingInCallback(false, null);
      return null;
    });

    if (googleAuth == null) {
      loggingInCallback(false, null);
      return null;
    }

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    if (credential == null) {
      loggingInCallback(false, null);
      return null;
    }

    // Once signed in, return the UserCredential
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential).catchError((e) {
      loggingInCallback(false, null);
      return null;
    });
    loggingInCallback(true, userCredential);
  }

  static void responsePrint(Response<dynamic> response) {
    AppLogger.print("Response: ${response.data}");
  }

  static Future<void> launchURL(String url) async {
    bool canLaunchVal = await canLaunch(url);
    if (canLaunchVal) {
      await launch(url);
    } else {
      Fluttertoast.showToast(
        msg: "Couldn't perform action!",
        backgroundColor: AppColor.red,
      );
    }
  }
}
