import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventMainPage extends StatefulWidget {
  const EventMainPage({Key? key}) : super(key: key);

  @override
  State<EventMainPage> createState() => _EventMainPageState();
}

class _EventMainPageState extends State<EventMainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.transparent),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.blue,
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  text: '전체',
                ),
                Tab(text: '체험'),
                Tab(text: '행사'),
              ],
            ),
            Expanded(
              flex: 1,
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                        eventItem('assets/dojagi.jpg', '감성도자기공방', '체험',
                            '도자기 만들기 체험', '2023.05.01~05.31'),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget eventItem(
    String image,
    String marketName,
    String type,
    String contents,
    String time,
  ) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 10,
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
                      Text(
                        marketName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        type,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ]),
                    SizedBox(height: 12),
                    Text(
                      contents,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text('신청기간 : $time')
                  ],
                ),
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Colors.grey.shade300)))),
        ],
      ),
    );
  }
}
