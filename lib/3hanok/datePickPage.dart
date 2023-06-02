import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class DatePickPage extends StatefulWidget {
  const DatePickPage({Key? key}) : super(key: key);

  @override
  State<DatePickPage> createState() => _DatePickPageState();
}

class _DatePickPageState extends State<DatePickPage> {
  List<DateTime?> _dates = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          '날짜 선택',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: CalendarDatePicker2WithActionButtons(
          config: CalendarDatePicker2WithActionButtonsConfig(
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 60)),
            firstDayOfWeek: 0,
            calendarType: CalendarDatePicker2Type.range,
            selectedDayTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            selectedDayHighlightColor: Colors.brown,
            disableModePicker: true,
            centerAlignModePicker: true,
            customModePickerIcon: SizedBox(),
          ),
          value: _dates,
          onValueChanged: (dates) => _dates = dates,
          onCancelTapped: () {
            Navigator.pop(context);
          },
          onOkTapped: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
