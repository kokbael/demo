import 'package:demo/banner.dart';
import 'package:demo/controller/auth_controller.dart';
import 'package:demo/loginPage.dart';
import 'package:demo/mainList.dart';
import 'package:demo/management/productRegistration.dart';
import 'package:demo/marketCard.dart';
import 'package:demo/minibanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'eventMainPage.dart';
import 'marketMainPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GetMaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('전통문화  시\nㅤ플랫폼  점',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontFeatures: [FontFeature.tabularFigures()] // 텍스트 폭 고정
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.black),
              onPressed: () {
                Get.to(() => LoginPage(), transition: Transition.cupertino,
                    binding: BindingsBuilder(() {
                  Get.put(AuthController());
                }));
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
            //   child: Container(
            //     height: 35,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(8)),
            //         color: Colors.white),
            //     width: MediaQuery.of(context).size.width,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: const [
            //         Icon(Icons.search),
            //         Text('  '),
            //       ],
            //     ),
            //   ),
            // ),
            SlideBanner(),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Get.to(
                      MarketMainPage(),
                      transition: Transition.cupertino,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 6,
                      // color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/hanbok.png'),
                          SizedBox(height: 5),
                          Text(
                            '문화상품',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      // color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/tteok.png'),
                          SizedBox(height: 5),
                          Text(
                            '전통시장',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      // color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/hanok.png'),
                          SizedBox(height: 5),
                          Text(
                            '한옥숙소',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(EventMainPage());
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      // color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/festival.png'),
                          SizedBox(height: 5),
                          Text(
                            '체험/행사',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MiniBanner(),
            MarketCard(),
            MarketCard(),
            SizedBox(height: 15),
            MainList(),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 1, selectedItemColor: Colors.black, items: [
        BottomNavigationBarItem(
          label: '카테고리', // 상단 바와 중복이라 없어도 될 듯
          icon: Icon(
            Icons.menu,
          ),
        ),
        BottomNavigationBarItem(
          label: '홈',
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: '주문/배송',
          icon: IconButton(
            onPressed: () => Get.to(() => ProductRegistration()),
            icon: Icon(Icons.fire_truck_outlined),
          ),
        ),
      ]),
    );
  }
}
