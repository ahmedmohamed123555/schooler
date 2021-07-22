import 'package:flutter/material.dart';
import 'admin/news_page_admin.dart';
import 'teacher/news_page_teacher.dart';
import 'package:schooler/parent/start_page_parent.dart';
import 'student/student_start_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String chosenAccount;
  void choseAccount() {
    if (chosenAccount == 'Admin') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return NewsPageAdmin();
        }),
      );
    } else if (chosenAccount == 'Parent') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return StartPageParent();
        }),
      );
    } else if (chosenAccount == 'Teacher') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return NewsPageTeacher();
        }),
      );
    } else if (chosenAccount == 'Student') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return StudentStartPage();
        }),
      );
    }
  }

  List accounts = ['Admin', 'Parent', 'Teacher', 'Student'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('SCHOOLER'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 250.0,
                height: 250.0,
                child: Image.asset('images/2.png'),
              ),
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 133,
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(
                //   color: Colors.black,
                //   width: 1.0,
                // ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: accounts.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                    hint: Text(
                      'SELECT USER',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    value: chosenAccount,
                    onChanged: (newValue) {
                      setState(() {
                        chosenAccount = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextField(
                //onChanged: (){},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Your Phone Number',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.smartphone_outlined,
                    color: Colors.teal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                //onChanged: (){},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.teal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Text(
              'Forgot your password?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              onPressed: () {
                choseAccount();
              },
              child: Text('Login'),
              color: Colors.white,
              height: 40.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
