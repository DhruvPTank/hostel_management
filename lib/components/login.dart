import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:screen_devision/birthdayCard.dart';
import 'package:screen_devision/components/personalDetails.dart';
import 'package:screen_devision/components/studyDetails.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  bool isRememberMe = true;
  late String _username, _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.10,
                  top: MediaQuery.of(context).size.height * 0.15),
              child: const Text(
                'APC\nRAJKOT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.43,
                  right: 60,
                  left: 60),
              child: Container(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'UserName',
                        ),
                        validator: (value) {
                          if (value != null &&
                              value.isEmpty &&
                              value.length < 6) {
                            return 'Enter UserName';
                          }
                        },
                        onSaved: (value) => _username = value!,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            labelText: 'password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value != null &&
                              value.isEmpty &&
                              value.contains("dhruv@123") &&
                              value.length < 5) {
                            return 'Enter Password';
                          }
                        },
                        onSaved: (value) => _password = value!,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: isRememberMe,
                              onChanged: (value) {
                                setState(() {
                                  isRememberMe = !isRememberMe;
                                  print('isRememberMe ::: $isRememberMe');
                                });
                              },
                            ),
                            height: 23,
                            width: 23,
                          ),
                          Text('Remember Me',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.only(top: 30, bottom: 20),

                            // backgroundColor: Colors.black12,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                         personal_detils()),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                // color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
