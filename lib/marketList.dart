import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketList extends StatelessWidget {
  const MarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(children: [
          itemSet(
            item(context, 'assets/hatsal1.jpg', '분홍색 한복', '600,000원'),
            item(context, 'assets/hatsal2.jpg', '푸른색 한복', '600,000원'),
          ),
          itemSet(
            item(context, 'assets/hatsal3.jpg', '한복 대여', '100,000원'),
            item(context, 'assets/hatsal4.jpg', '한복 대여', '100,000원'),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 40),
          Text(
            '관련 상품을 둘러보세요.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Container(
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
        ]),
      ],
    );
  }

  /*










  */
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

  SizedBox item(
      BuildContext context, String itemImage, String itemName, String cost) {
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
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Colors.grey.shade300)))),
              SizedBox(height: 5),
              Text(cost,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
