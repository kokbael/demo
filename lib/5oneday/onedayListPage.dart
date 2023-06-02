import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo/5oneday/onedayDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../3hanok/datePickPage.dart';
import '../sideMenu.dart';

class OnedayListPage extends StatefulWidget {
  const OnedayListPage({Key? key}) : super(key: key);

  @override
  State<OnedayListPage> createState() => _OnedayListPageState();
}

class _OnedayListPageState extends State<OnedayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            '원데이클래스',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.black),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {},
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          // border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 10),
                            Text(
                              '부산',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      Get.to(() => DatePickPage());
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          // border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.calendar_month_outlined),
                            SizedBox(width: 10),
                            Text(
                              '날짜선택',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => OnedayDetailPage());
                  },
                  child: eventItem(
                      'assets/oneday1_1.png', '가야금 뜯는 봄날', '원데이', '전문 연주자에게 1:1로 배우는 가야금')),
              eventItem('assets/oneday2_1.png', '아리랑스쿨', '원데이', '대금,품격을 연주하다'),
              eventItem('assets/oneday3_1.png', '손동우도자그릇bonbon', '원데이',
                  '도자기 원데이클래스 (1인 2작품) 물레체험 + 핸드빌딩'),
              eventItem('assets/oneday4_1.png', '에스에이세라믹', '원데이', '[강남]도자기체험 원데이클래스'),
              eventItem('assets/dojagi.jpg', '감성도자기공방', '원데이', '도자기 만들기 체험'),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox eventItem(
    String image,
    String marketName,
    String type,
    String contents,
    // String time,
  ) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          marketName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          type,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 12),
                    AutoSizeText(
                      maxLines: 2,
                      contents,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    // Text('신청기간 : $time')
                  ],
                ),
              ),
            ],
          ),
          // Container(
          //     padding: EdgeInsets.only(top: 10),
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //         border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)))),
        ],
      ),
    );
  }
}
