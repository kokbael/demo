import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController instance = Get.find();

  String selectedDropdown = '선택';
  List<String> dropdownList = [
    '선택',
    '한복',
    '식품',
    '기타',
  ];

  void getFirst() {}
}
