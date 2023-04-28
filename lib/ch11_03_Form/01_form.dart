import 'package:flutter/material.dart';
import 'package:flutter_study/ch09_06_Container/circle_gradient.dart';

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

  final _formKey = GlobalKey<FormState>();
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
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    firstName = value;
                  },
                ),
              ),

              // TextFormField: First Name
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "LastName",
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

              // 버튼
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    print("[유효] first name: $firstName, last name: $lastName");
                    _formKey.currentState?.save();
                  }
                  print("[오류] first name: $firstName, last name: $lastName");
                },
                child: Text("제출"),
              ),
            ],
          ),
        ),
      ]
    );
  }
}
