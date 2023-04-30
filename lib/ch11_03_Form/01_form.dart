import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Form 사용하기"),),
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

  final _formKey = GlobalKey<FormState>();            // Form에 사용할 key
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20)),

        // Form
        Form(
          key: _formKey,
          child: Column(
            children: [

              // TextFormField: First Name
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "FirstName",
                    border: OutlineInputBorder(),
                  ),

                  // String? Function(String?)
                  // value가 유효하면 ==> null 리턴,
                  // value가 유효하지 않으면 ==> 에러메시지(String) 리턴
                  validator: (value) {
                    // value가 (null이 아니고) ""인 경우 ==> 에러 메시지
                    // 아무것도 입력하지 않은 경우: null이 아니라, ""가 value로 들어온다
                    if (value?.isEmpty ?? false) {
                      print("if문 내부, value=[$value], value==null[${value == null}] value?.isEmpty=[${value?.isEmpty}]");
                      return 'Please enter first name';
                    }
                    // value가 null이거나, ""이 아닌 경우
                    print("if문 외부, value=$value");
                    return null;
                  },
                  onSaved: (String? value) {
                    firstName = value;
                  },
                ),
              ),

              // TextFormField: Last Name
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "LastName",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    lastName = value;
                  },
                ),
              ),
            ],
          ),
        ),

        // 버튼
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              print("[유효] first name: $firstName, last name: $lastName");
              _formKey.currentState?.save();
            } else {
              print("[오류] first name: $firstName, last name: $lastName");
            }
          },
          child: Text("제출"),
        ),
      ]
    );
  }
}
