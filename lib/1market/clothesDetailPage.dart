import 'package:demo/1market/imageDetailSlider.dart';
import 'package:flutter/material.dart';

import '../sideMenu.dart';

class ClothesDetailPage extends StatelessWidget {
  const ClothesDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _itemWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('',
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ImageDetailSlider(),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '화이트 스니커즈',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: _itemWidth,
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)))),
                  SizedBox(height: 10),
                  Text('78,000원', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 15,
                        child: Container(
                          color: Colors.black87,
                          height: 50,
                          child: Center(
                            child: Text(
                              '바로구매',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      /* Spacer → default 1 */
                      Spacer(),
                      Expanded(
                        flex: 15,
                        child: Container(
                          color: Colors.grey.shade300,
                          height: 50,
                          child: Center(
                            child: Text(
                              '장바구니',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 15,
                        child: Container(
                          color: Colors.grey.shade300,
                          height: 50,
                          child: Center(
                            child: Text(
                              '관심상품',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '상세정보',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: _itemWidth,
                    height: 400,
                    child: Image.asset('assets/1.jpg'),
                  ),
                  SizedBox(
                    width: _itemWidth,
                    height: 400,
                    child: Image.asset('assets/2.jpg'),
                  ),
                  SizedBox(
                    width: _itemWidth,
                    height: 400,
                    child: Image.asset('assets/3.jpg'),
                  ),
                  Text('화이트 스니커즈입니다.'),
                  SizedBox(height: 50),
                  Text(
                    '구매후기',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 50),
                  Text(
                    '상품문의',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
