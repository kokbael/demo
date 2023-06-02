import 'package:flutter/material.dart';
import '../sideMenu.dart';
import 'marketList.dart';

class MarketMainPage extends StatelessWidget {
  const MarketMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            '', //'한복',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
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
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.asset(
                'assets/hatsal4_3.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: _width,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '햇살고운한복',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(height: 5),
                  Text('부산광역시 동구 진시장로16번길 8')
                ],
              ),
            ),
            MarketList(),
          ],
        ),
      ),
    );
  }
}
