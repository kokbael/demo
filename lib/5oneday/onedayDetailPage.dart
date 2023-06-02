import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo/5oneday/onedayInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:hidable/hidable.dart';
import '../imageSlider.dart';
import '../main.dart';

class OnedayDetailPage extends StatefulWidget {
  const OnedayDetailPage({Key? key}) : super(key: key);
  @override
  State<OnedayDetailPage> createState() => _OnedayDetailPageState();
}

class _OnedayDetailPageState extends State<OnedayDetailPage> {
  bool _isBluetoothOn = false;
  int _selectedTabbar = 0;
  final ScrollController scrollController = ScrollController();
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
            '가야금 뜯는 봄날',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  size: 20,
                )),
            IconButton(
                splashRadius: 20,
                onPressed: () {
                  setState(() {
                    _isBluetoothOn = !_isBluetoothOn;
                  });
                },
                icon: Icon(
                  _isBluetoothOn ? Icons.favorite : Icons.favorite_border,
                  size: 20,
                )),
          ]),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ImageSlider(imageList: const [
              'assets/oneday1_1.png',
              'assets/oneday1_2.png',
              'assets/oneday1_3.png',
              'assets/oneday1_4.png'
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: AutoSizeText(
                      maxLines: 2,
                      '전문 연주자에게 1:1로 배우는 가야금',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 5),
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
                      Text(' 5.0 (13)'),
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
                  Tab(text: '상세정보'),
                  Tab(text: '위치/교통'),
                  Tab(text: '변경/취소'),
                  Tab(text: '후기'),
                ],
                views: const [SizedBox(), SizedBox(), SizedBox(), SizedBox()],
              ),
            ),
            Builder(builder: (_) {
              if (_selectedTabbar == 0) {
                return OnedayInfo();
              } else if (_selectedTabbar == 1) {
                return Container(height: 1000, color: Colors.red);
              } else if (_selectedTabbar == 2) {
                return Container(height: 1500, color: Colors.green);
              } else if (_selectedTabbar == 3) {
                return Container(height: 2000, color: Colors.red);
              } else if (_selectedTabbar == 4) {
                return Container(height: 2500, color: Colors.green);
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
      bottomNavigationBar: Hidable(
        preferredWidgetSize: Size.fromHeight(70),
        controller: scrollController,
        child: Container(
          decoration:
              BoxDecoration(border: Border(top: BorderSide(color: Colors.grey, width: 0.2))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '35,000원',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.brown[400],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    child: Text('신청하기', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
