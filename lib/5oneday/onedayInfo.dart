import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:demo/3hanok/datePickPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnedayInfo extends StatefulWidget {
  const OnedayInfo({Key? key}) : super(key: key);

  @override
  State<OnedayInfo> createState() => _OnedayInfoState();
}

class _OnedayInfoState extends State<OnedayInfo> {
  List<DateTime?> _dates = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          // InkWell(
          //   borderRadius: BorderRadius.circular(8),
          //   onTap: () {
          //     Get.to(() => DatePickPage());
          //   },
          //   child: Container(
          //     height: 40,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
          //     child: Padding(
          //       padding: const EdgeInsets.all(5.0),
          //       child: Row(
          //         mainAxisSize: MainAxisSize.min,
          //         children: const [
          //           Icon(Icons.calendar_month_outlined),
          //           SizedBox(width: 10),
          //           Text(
          //             '날짜선택',
          //             style: TextStyle(fontSize: 18),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          CalendarDatePicker2(
            config: CalendarDatePicker2WithActionButtonsConfig(
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(Duration(days: 60)),
              firstDayOfWeek: 0,
              calendarType: CalendarDatePicker2Type.single,
              selectedDayTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              selectedDayHighlightColor: Colors.brown,
              disableModePicker: true,
              centerAlignModePicker: true,
              customModePickerIcon: SizedBox(),
            ),
            value: _dates,
            onValueChanged: (dates) => _dates = dates,
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '0/1명',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text('16:00 ~ 17:00'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '0/1명',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text('18:00 ~ 19:00'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '0/1명',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text('20:00 ~ 21:00'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
