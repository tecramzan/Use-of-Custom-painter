import 'package:custom_painter/homeScreen.dart';
import 'package:custom_painter/student_sreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginsrcree extends StatefulWidget {
  const Loginsrcree({super.key});

  @override
  State<Loginsrcree> createState() => _LoginsrcreeState();
}

class _LoginsrcreeState extends State<Loginsrcree> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Age',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('email', _emailController.text.toString());
                sp.setString('password', _passwordController.text.toString());
                sp.setString('age', _ageController.text.toString());
                sp.setString('userType', 'student');
                sp.setBool('isLogin', true);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => StudentSreen()));
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                width: double.infinity,
                child: Center(child: Text('LogIn')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
