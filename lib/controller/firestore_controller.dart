import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FireStoreController extends GetxController {
  static FireStoreController instance = Get.find();
  CollectionReference collection = FirebaseFirestore.instance.collection('User');
  FirebaseAuth authentication = FirebaseAuth.instance;

  RxString Email = ''.obs;
  RxString name = ''.obs;
  RxString phone = ''.obs;
  RxString address = ''.obs;
  RxString subAddress = ''.obs;
  RxString uid = ''.obs;
  @override
  void onReady() {
    super.onReady();
    _getDocData();
  }

  // 이것들 로컬에 저장??
  void _getDocData() {
    if (authentication.currentUser != null) {
      collection.doc(authentication.currentUser!.uid).get().then((doc) {
        Email.value = doc['Email'];
        name.value = doc['name'];
        phone.value = doc['phone'];
        address.value = doc['address'];
        subAddress.value = doc['subAddress'];
        uid.value = doc['uid'];
      });
    } else {
      return;
    }
  }

  Future<void> addUserinfo({
    required String Email,
    required String name,
    required String phone,
    required String address,
    required String subAddress,
  }) async {
    try {
      await collection.doc(authentication.currentUser!.uid).set({
        'uid': FirebaseAuth.instance.currentUser!.uid,
        'Email': Email,
        'name': name,
        'phone': phone,
        'address': address,
        'subAddress': subAddress.isEmpty ? '' : subAddress,
      });
    } catch (e) {
      print(e);
    }
  }
}
