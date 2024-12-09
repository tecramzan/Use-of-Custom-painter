import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logInSrcree.dart';

class StudentSreen extends StatefulWidget {
  const StudentSreen({super.key});

  @override
  State<StudentSreen> createState() => _StudentSreenState();
}

class _StudentSreenState extends State<StudentSreen> {
  String email = '';
  String password = '';
  String age = '';
  String type = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    password = sp.getString('password') ?? '';
    age = sp.getString('age') ?? '';
    type = sp.getString('userType') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Loginsrcree()));
              },
              icon: Icon(
                Icons.logout_rounded,
                color: Colors.red,
                size: 36,
              ))
        ],
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text('Student Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email'),
                Text(email.toString()),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Password'),
                Text(password.toString()),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Age'),
                Text(age.toString()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('UserType'),
                Text(type.toString()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Loginsrcree()));
              },
              child: Container(
                height: 50,
                color: Colors.red,
                width: double.infinity,
                child: Center(child: Text('LogOut')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
