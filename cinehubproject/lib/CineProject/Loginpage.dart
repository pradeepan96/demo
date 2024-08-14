import 'package:flutter/material.dart';
import 'CustomTextbutton.dart';
import 'CustomTextformfield.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenwidth= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 90),
            child: Container(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('welcome back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                  CustomTextFormField(
                    text: 'Email',
                    colors: Colors.grey,
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Enter the email';
                      }
                      return null;
                    },
                    controller: emailcontroller,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: CustomTextFormField(
                        text: 'Password',
                        colors: Colors.grey, validator: (data){
                      if (data == null || data.isEmpty) {
                        return 'Enter the email';
                      }
                      return null;
                    },
                        controller:passwordcontroller),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 290),
                      child: CustomTextButton(
                        text: 'Forgot Password',
                        colors: Colors.red,
                        colors1: Colors.red, onPressed: () {  },)),
                  Container(
                    height: 35,
                    width: screenwidth,
                    child: ElevatedButton(
                      onPressed: () {if (_formkey.currentState!.validate());},
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.red[900]),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Text(
                  'Dont have an account ?',
                  style: TextStyle(color: Colors.blue[800], fontSize: 16),
                ),
              ),
              CustomTextButton(
                text: 'Sign In', colors: Colors.red, colors1: Colors.red, onPressed: () {  },)
            ],
          )
        ],
      ),
    );
  }
}
