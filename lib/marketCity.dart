import 'package:demo/marketChoice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketCity extends StatelessWidget {
  const MarketCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> dropdownList = [
    //   '서울',
    //   '부산',
    // ];
    return Scaffold(
      appBar: AppBar(
          title: Text('지역 선택',
              style: TextStyle(
                color: Colors.black,
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
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // Text(
              //   '지역 선택',
              //   style: TextStyle(fontSize: 20),
              // ),
              // SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 200,
                              'assets/seoul_1.jpg',
                              fit: BoxFit.fill,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '서울',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => MarketChoice());
                    },
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                width: MediaQuery.of(context).size.width / 2.2,
                                height: 200,
                                'assets/busan_1.jpg',
                                fit: BoxFit.fill,
                                opacity: const AlwaysStoppedAnimation(.5),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '부산',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 200,
                              'assets/seoul_1.jpg',
                              fit: BoxFit.fill,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '경기',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 200,
                              'assets/busan_1.jpg',
                              fit: BoxFit.fill,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '경남',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 200,
                              'assets/seoul_1.jpg',
                              fit: BoxFit.fill,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '경북',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              width: MediaQuery.of(context).size.width / 2.2,
                              height: 200,
                              'assets/busan_1.jpg',
                              fit: BoxFit.fill,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '제주',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '전체보기',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
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
