import 'package:flutter/material.dart';
import 'package:fyp/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

// await Firebase.initializeApp();
}

final Future<FirebaseApp> _initialization = Firebase.initializeApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return GetMaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            home: SplashScreen(),
            //Sing_InOption(),
          );
        });
  }
}
