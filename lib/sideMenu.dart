import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/firestore_controller.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FireStoreController>(
      init: FireStoreController(),
      global: false,
      dispose: (state) => state.controller?.onClose(),
      builder: (controller) {
        return Drawer(
          width: MediaQuery.of(context).size.width / 1.5,
          surfaceTintColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          controller.name.value,
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(height: 10),
                    Obx(() => Text(
                          controller.Email.value,
                          style: TextStyle(fontSize: 16),
                        )),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.thumb_up),
                title: Text('찜 리스트'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.fire_truck_outlined),
                title: Text('주문/배송'),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                leading: Icon(Icons.report),
                title: Text('고객지원'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        );
      },
    );
  }
}
