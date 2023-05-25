import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("DatePickerDialog, TimePickerDialog 연습"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  // 시간, 날짜 변수
  DateTime dateValue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();


  // 날짜 고르기
  Future<void> onDatePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),  // initialDate=2023년인데 firstDate=2026년인 경우: (에러) initialDate must be on or after firstDate
      firstDate: DateTime(2020),    // 2016으로 한 경우: 2015가 목록에 있으나 선택이 안 됨
      lastDate: DateTime(2030));

    if (picked != null) {
      setState(() {
        dateValue = picked;
      });
    } else {
      print("picker is null");
    }
  }

  // 시간 고르기
  Future<void> onTimePicker() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now());

    if (picked != null) {
      setState(() {
        timeValue = picked;
      });
    } else {
      print("picker is null");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // DatePicker
          ElevatedButton(onPressed: onDatePicker, child: Text("5 onDatePicker()")),
          Text("Date Picked: ${DateFormat('yyyy-MM-dd').format(dateValue)}"),

          // TimePicker
          ElevatedButton(onPressed: onTimePicker, child: Text("6 onTimePicker()")),
          Text("Time Picked: ${timeValue.hour}:${timeValue.minute}"),

        ],
      ),
    );
  }
}

