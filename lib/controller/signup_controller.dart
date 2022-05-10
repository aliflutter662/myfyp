import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class signupcontroller extends GetxController {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  var confirmPassword = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  registration(BuildContext context) async {
    if (password == confirmPassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        Get.snackbar(
          "Congratulations",
          "",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.green,
          messageText: Text(
            "Register succssfully",
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(seconds: 4),
          isDismissible: true,
          forwardAnimationCurve: Curves.easeOutBack,
        );
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Login(),
        //   ),
        // );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
          Get.snackbar(
            "Password",
            "",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.black,
            borderRadius: 20,
            margin: EdgeInsets.all(15),
            colorText: Colors.red,
            messageText: Text(
              "Password Provided is too Weak",
              style: TextStyle(color: Colors.white),
            ),
            duration: Duration(seconds: 4),
            isDismissible: true,
            forwardAnimationCurve: Curves.easeOutBack,
          );
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          Get.snackbar(
            "Account",
            "",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.black,
            borderRadius: 20,
            margin: EdgeInsets.all(15),
            colorText: Colors.red,
            messageText: Text(
              "Account Already exists",
              style: TextStyle(color: Colors.white),
            ),
            duration: Duration(seconds: 4),
            isDismissible: true,
            forwardAnimationCurve: Curves.easeOutBack,
          );
        }
      }
    } else {
      print("Password and Confirm Password doesn't match");
      Get.snackbar(
        "Password and Confirm Password doesn't match",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.red,
        messageText: Text(
          "Account Already exists",
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 4),
        isDismissible: true,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }
}
