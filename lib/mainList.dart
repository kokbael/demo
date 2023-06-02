import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1market/clothesDetailPage.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  // height: 280,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, CupertinoPageRoute(builder: (context) => ClothesDetailPage()));
                    },
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/1.jpg'),
                        SizedBox(height: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '화이트 스니커즈',
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(width: 1.0, color: Colors.grey.shade300)))),
                            SizedBox(height: 5),
                            Text('78,000원',
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                item(context, 'assets/item7.jpg', '궁궐 부채', '12,000원'),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ],
    );
  }

  Column itemSet(SizedBox item1, SizedBox item2) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [item1, item2]),
        SizedBox(height: 20)
      ],
    );
  }

  SizedBox item(BuildContext context, String itemImage, String itemName, String cost) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      // height: 280,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(itemImage),
          SizedBox(height: 5),
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
