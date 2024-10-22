import 'package:flutter/material.dart';
import 'package:bankingsim/containner/containner.dart';
import 'package:bankingsim/containner/FormHeader.dart';

class ForgetPmail extends StatelessWidget {
  const ForgetPmail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(height: tDefaultSize * 4),
             const FormHeaderWidget(
                image: tForgetPasswordImage,
                title: tForgetPasswordTitle,
                subTitle: tForgetPasswordSubTitle,
              ),
              const SizedBox(height: tFormHeight,),
              Form(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                       Column(
          children: [
            Container(
              height: 65.0,
              width: double.infinity,
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(tSecondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                onPressed: (){

                },
                child: Text(tNext,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),

                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
