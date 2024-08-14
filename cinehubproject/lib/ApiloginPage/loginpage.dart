import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'CustomTextbutton.dart';
import 'CustomTextformfield.dart';
import 'dummylogin.dart';
import 'modelclasslogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  late Map<String, dynamic> jValue;

  void getData(LoginModel login) {
    final Map<String, dynamic> data = login.toJson();
    if (kDebugMode) {
      print(data);
    }
  }

  @override
  void initState() {
    jValue = ApiDat.value;
    super.initState();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 200.0, right: 30.0),
              child: Form(
                key: _formkey,
                child: Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('welcome back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                      CustomTextFormField2(
                        text: 'Email',
                        colors: Colors.grey,
                        controller: _emailcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter the email';
                          }
                          return null;
                        },
                      ),
                      CustomTextFormField2(
                          text: 'Password',
                          colors: Colors.grey,
                          controller: _passwordcontroller,
                          validator: (values) {
                            if (values == null || values.isEmpty) {
                              return 'Enter the password';
                            }
                            return null;
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: CustomTextButton1(
                          text: 'Forgot Password',
                          colors: Colors.red,
                          colors1: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: screenWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              LoginModel login = LoginModel(
                                  email: _emailcontroller.text,
                                  password: _passwordcontroller.text);
                              getData(login);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.red[900],
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: TextStyle(color: Colors.blue[800], fontSize: 16),
                  ),
                  CustomTextButton1(
                    text: 'Sign In',
                    colors: Colors.red,
                    colors1: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
