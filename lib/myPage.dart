import 'package:demo/controller/auth_controller.dart';
import 'package:demo/controller/firestore_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);
  Container _border(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade200))));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FireStoreController>(
        init: FireStoreController(),
        global: false,
        dispose: (state) => state.controller?.onClose(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                '마이페이지',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 800,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        // margin: EdgeInsets.all(4.0),
                        // padding: EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                    controller.name.value,
                                    style: TextStyle(fontSize: 20),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Obx(() => Text(
                                    controller.Email.value,
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Flexible(
                            flex: 8,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(4.0),
                              // padding: EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 40, child: Image.asset('assets/qrcode_new4.jpg')),
                                    SizedBox(height: 10),
                                    Text(
                                      'QR 스캔',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Flexible(
                            flex: 8,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.all(4.0),
                              // padding: EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '0',
                                            style: TextStyle(
                                                fontSize: 24, fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            '  P',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      )),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '포인트',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '주문내역',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            _border(context),
                            SizedBox(
                              height: 80,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '찜 리스트',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            _border(context),
                            SizedBox(
                              height: 80,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '보유쿠폰',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            _border(context),
                            SizedBox(
                              height: 80,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '고객지원',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            _border(context),
                            SizedBox(
                              height: 80,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '이용약관',
                                  style: TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          FirebaseAuth.instance.signOut().then((value) => {
                                Get.put(AuthController()),
                              });
                        },
                        child: Text(
                          '로그아웃',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
