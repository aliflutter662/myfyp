import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dialogcontroller extends GetxController {
  loginfirst(
      {String title = "Oops Error",
      String description = "Seems like you are not Logged in "}) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //   Get.to(Sing_InOption());
                      // if (Get.isDialogOpen!) Get.back();
                    },
                    child: Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Get.isDialogOpen!) Get.back();
                    },
                    child: Text("Not Now"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  //contact us
  ContactUS({String title = "Contact us", String description = "mail"}) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 22)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Cancle",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
