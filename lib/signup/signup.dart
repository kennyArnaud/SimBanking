import 'package:flutter/material.dart';
import '../containner/containner.dart';
import 'SignUp_Form_Widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: tPrimaryColor,
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignupHeaderWidget(),
               const SignupForm(),
                const SignupFooterWidget(),

              ],
            ),
          ),
        )
      
      ),
    );
  }
}
