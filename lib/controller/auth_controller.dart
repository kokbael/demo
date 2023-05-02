import 'package:demo/myPage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../loginPage.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth authentication = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(authentication.currentUser);
    _user.bindStream(authentication.userChanges());
    ever(_user, _moveToPage);
  }

  void _moveToPage(User? user) {
    // if (user == null) {
    //   Get.off(() => LoginPage(), transition: Transition.cupertino,
    //       binding: BindingsBuilder(() {
    //         Get.put(FireStoreController());
    //       }));
    // } else {
    //   Get.off(
    //         () => MyPage(),
    //     transition: Transition.cupertino,
    //     binding: BindingsBuilder(() {
    //       Get.put(FireStoreController());
    //     }),
    //   );
    if (user == null) {
      Get.to(() => LoginPage(), transition: Transition.cupertino);
    } else {
      Get.off(() => MyPage(), transition: Transition.cupertino);
      //     binding: BindingsBuilder(() {
      //   Get.putAsync<FireStoreController>(tag: authentication.currentUser!.uid,
      //       () async {
      //     await Future.delayed(const Duration(seconds: 1));
      //     return FireStoreController();
      //   });
      // }));
    }
  }

  void login(String email, String password) async {
    try {
      await authentication.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "Error message",
        "User message",
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "로그인 실패",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void logout() {
    authentication.signOut();
  }
}
