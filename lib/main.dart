import 'dart:ui';
import 'package:demo/2sijang/jtChoice.dart';
import 'package:demo/2sijang/jtList.dart';
import 'package:demo/3hanok/hanokMain.dart';
import 'package:demo/5oneday/onedayListPage.dart';
import 'package:demo/banner.dart';
import 'package:demo/controller/auth_controller.dart';
import 'package:demo/0signup/loginPage.dart';
import 'package:demo/mainList.dart';
import 'package:demo/1market/marketCard.dart';
import 'package:demo/minibanner.dart';
import 'package:demo/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';
import '6management/productRegistration.dart';
import '4event/eventMainPage.dart';
import '1market/marketMainPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('ko')],
      scrollBehavior: MyCustomScrollBehavior(),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('전통문화  시\nㅤ플랫폼  점',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontFeatures: [FontFeature.tabularFigures()] // 텍스트 폭 고정
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          // leading: IconButton(
          //   icon: Icon(Icons.menu, color: Colors.black),
          //   onPressed: () {},
          // ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {
                Get.to(() => LoginPage(), transition: Transition.cupertino,
                    binding: BindingsBuilder(() {
                  Get.put(AuthController());
                }));
              },
            ),
          ]),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 7, 10, 0),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)), color: Colors.white),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.search),
                    Text('  '),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: Colors.brown)))),
            ),
            SizedBox(height: 10),
            SlideBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => Get.to(
                              () => MarketMainPage(),
                              transition: Transition.cupertino,
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              // color: Colors.black,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/hanbok.png'),
                                  SizedBox(height: 5),
                                  Text(
                                    '문화상품',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Get.to(() => JtChoice());
                            },
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
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Get.to(() => HanokMain());
                            },
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
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Get.to(() => OnedayListPage());
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              // color: Colors.black,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/graduation-hat.png'),
                                  SizedBox(height: 5),
                                  Text(
                                    '원데이클래스',
                                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              Get.to(() => EventMainPage());
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
                                    '행사정보',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            MiniBanner(),
            MarketCard(),
            SizedBox(height: 15),
            MainList(),
            SizedBox(height: 20),
            Text(
              '추석에 선물 하기 좋은 상품',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 270,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, index) {
                    return Row(children: [
                      itemSet(
                        item(context, 'assets/item1.jpg', '자개 노트', '28,000원'),
                        item(context, 'assets/item2.jpg', '자개 메모지', '12,000원'),
                      ),
                      itemSet(
                        item(context, 'assets/item3.jpg', '피쉬 자석', '28,000원'),
                        item(context, 'assets/item4.jpg', '꽃무늬 메모지', '28,000원'),
                      ),
                      itemSet(
                        item(context, 'assets/item5.jpg', '고급 젓가락', '28,000원'),
                        item(context, 'assets/item6.jpg', '나전칠기 책갈피', '28,000원'),
                      ),
                    ]);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Hidable(
        preferredWidgetSize: Size.fromHeight(80),
        controller: scrollController,
        child: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              label: '카테고리', // 상단 바와 중복이라 없어도 될 듯
              icon: Builder(builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu),
                );
              }),
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
          ],
        ),
      ),
    );
  }

  Column itemSet(SizedBox item1, SizedBox item2) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [item1, item2],
        ),
        SizedBox(height: 20)
      ],
    );
  }

  SizedBox item(BuildContext context, String itemImage, String itemName, String cost) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      height: 250,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            height: 180,
            child: Image.asset(itemImage, fit: BoxFit.fill),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              SizedBox(height: 5),
              Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)))),
              SizedBox(height: 5),
              Text(cost, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
