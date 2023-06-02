import 'package:demo/1market/marketList.dart';
import 'package:flutter/material.dart';

import '../sideMenu.dart';

class JtList extends StatelessWidget {
  const JtList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: const [
            SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                  '부산진시장',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ))),
            MarketList(),
          ],
        ),
      ),
    );
  }
}
