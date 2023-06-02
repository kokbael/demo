import 'package:demo/3hanok/roomChoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import '../imageSlider.dart';
import '../main.dart';

class HanokInfo extends StatefulWidget {
  const HanokInfo({Key? key}) : super(key: key);
  @override
  State<HanokInfo> createState() => _HanokInfoState();
}

class _HanokInfoState extends State<HanokInfo> {
  bool _isBluetoothOn = false;
  int _selectedTabbar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Text(
            '전주 별자리 한옥스테이',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              onPressed: () {
                Get.to(() => MyApp());
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(imageList: ['assets/hanok1.jpg', 'assets/hanok2.jpg', 'assets/hanok3.jpg']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '전주 별자리 한옥스테이',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share_outlined,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isBluetoothOn = !_isBluetoothOn;
                                });
                              },
                              icon: Icon(
                                _isBluetoothOn ? Icons.favorite : Icons.favorite_border,
                                size: 20,
                              )),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        ignoreGestures: true,
                        initialRating: 5,
                        minRating: 5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(' 5.0 (195)'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ContainedTabBarView(
                callOnChangeWhileIndexIsChanging: true,
                onChange: (int i) {
                  setState(() {
                    _selectedTabbar = i;
                  });
                },
                tabBarProperties: TabBarProperties(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                ),
                tabBarViewProperties: TabBarViewProperties(
                  physics: NeverScrollableScrollPhysics(),
                ),
                tabs: const <Widget>[
                  Tab(text: '객실선택'),
                  Tab(text: '위치/교통'),
                  Tab(text: '안내/정책'),
                  Tab(text: '시설/서비스'),
                  Tab(text: '후기'),
                ],
                views: const [SizedBox(), SizedBox(), SizedBox(), SizedBox(), SizedBox()],
              ),
            ),
            Builder(builder: (_) {
              if (_selectedTabbar == 0) {
                return RoomChoice(); //1st custom tabBarView
              } else if (_selectedTabbar == 1) {
                return Container(height: 1000, color: Colors.green); //2nd tabView
              } else if (_selectedTabbar == 2) {
                return Container(height: 1500, color: Colors.red); //3rd tabView
              } else if (_selectedTabbar == 3) {
                return Container(height: 2000, color: Colors.green); //3rd tabView
              } else if (_selectedTabbar == 4) {
                return Container(height: 2500, color: Colors.red);
              }
              return Container();
            }),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '판매자 정보',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          size: 20,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
