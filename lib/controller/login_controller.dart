import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/screens/homePage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class logincontroller extends GetxController {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  signInWithGoogle(
      BuildContext context, GoogleSignInAccount? googleUser) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    if (googleUser == null) {
      print('error');
    } else {
      //Get.to(GoogleProfile(user: googleUser));
      // Get.to(Profile());
    }

    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => Home_Screen()));

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);

    User? user = FirebaseAuth.instance.currentUser;

    // if (user != null) {
    //   // Customdialog.showDialog();

    //   FirebaseFirestore.instance
    //       .collection('users')
    //       .doc('${user.uid}')
    //       .get()
    //       .then((DocumentSnapshot documentSnapshot) {
    //     if (documentSnapshot.exists) {
    //       Navigator.pushAndRemoveUntil(
    //           context,
    //           MaterialPageRoute(
    //               builder: (BuildContext context) => Home_Screen()),
    //           (route) => false);
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           backgroundColor: Colors.redAccent,
    //           content: Text(
    //             "Login Successfully!!!",
    //             style: TextStyle(fontSize: 20.0),
    //           ),
    //         ),
    //       );
    //     } else {
    //       // FirebaseFirestore.instance.collection("users").doc(user.uid).set({
    //       //   'UID': user.uid,
    //       //   'Email': user.email,
    //       //   // 'Name': user.displayName,
    //       //   // 'Phone Number': user.phoneNumber,
    //       //   // 'Postal Code': '',
    //       //   // 'Street Address': '',
    //       //   // 'Country': '',
    //       //   // 'image': user.photoURL,
    //       // });
    //       Navigator.pushAndRemoveUntil(
    //           context,
    //           MaterialPageRoute(
    //               builder: (BuildContext context) => Home_Screen()),
    //           (route) => false);
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           backgroundColor: Colors.redAccent,
    //           content: Text(
    //             "Login Successfully!!!",
    //             style: TextStyle(fontSize: 20.0),
    //           ),
    //         ),
    //       );
    //     }
    //   });
    // } else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       backgroundColor: Colors.redAccent,
    //       content: Text(
    //         "Something went wrong",
    //         style: TextStyle(fontSize: 20.0),
    //       ),
    //     ),
    //   );
    // }
  }

  userLogin(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
      Get.snackbar(
        "Email",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.green,
        messageText: Text(
          "Login succssfully",
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 4),
        isDismissible: true,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        Get.snackbar(
          "opps",
          "",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.redAccent,
          messageText: Text(
            "No User Found for that Email",
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(seconds: 4),
          isDismissible: true,
          forwardAnimationCurve: Curves.easeOutBack,
        );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        Get.snackbar(
          "Wrong password",
          "",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.redAccent,
          messageText: Text(
            "Wrong Password Provided by User",
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(seconds: 4),
          isDismissible: true,
          forwardAnimationCurve: Curves.easeOutBack,
        );
      }
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
