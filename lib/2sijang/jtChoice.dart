import 'package:demo/minibanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo/2sijang/jtList.dart';

import '../sideMenu.dart';

class JtChoice extends StatelessWidget {
  const JtChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('전통시장',
              style: TextStyle(
                color: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.black),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MiniBanner(),
              SizedBox(height: 10),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.zero, // 패딩 설정
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: 20,
                        )),
                    SizedBox(width: 10),
                    Text(
                      '부산',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Get.to(() => JtList());
                },
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            'assets/busan_jin.jpg',
                            fit: BoxFit.fill,
                            opacity: const AlwaysStoppedAnimation(.7),
                          ),
                        ),
                      ),
                      Center(
                        child: Stack(children: [
                          Text(
                            '부산진시장',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.blue[700]!,
                            ),
                          ),
                          Text(
                            '부산진시장',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  // Get.to(() => MarketChoice());
                },
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            'assets/busan_jwadong.jpg',
                            fit: BoxFit.fill,
                            opacity: const AlwaysStoppedAnimation(.7),
                          ),
                        ),
                      ),
                      Center(
                        child: Stack(children: [
                          Text(
                            '좌동재래시장',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.blue[700]!,
                            ),
                          ),
                          Text(
                            '좌동재래시장',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  // Get.to(() => MarketChoice());
                },
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            'assets/busan_bujeon.jpg',
                            fit: BoxFit.fill,
                            opacity: const AlwaysStoppedAnimation(.7),
                          ),
                        ),
                      ),
                      Center(
                        child: Stack(children: [
                          Text(
                            '부전시장',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.blue[700]!,
                            ),
                          ),
                          Text(
                            '부전시장',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
