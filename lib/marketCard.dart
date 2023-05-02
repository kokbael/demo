import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'marketMainPage.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (context) => MarketMainPage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          height: 200,
                          child: Image.asset(
                            'assets/hatsal4_3.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              height: 100,
                              child: Image.asset(
                                'assets/hatsal3.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              height: 100,
                              child: Image.asset(
                                'assets/hatsal4.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '햇살고운한복',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '다양하고 아름다운 한복을 최저가로 제작(대여) 하세요!        최고의 품질 또한 약속드립니다.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '쿠폰사용가능',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
