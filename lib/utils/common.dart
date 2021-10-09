import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
}
