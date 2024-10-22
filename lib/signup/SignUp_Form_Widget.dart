import 'package:flutter/material.dart';
import '../containner/containner.dart';
import '../Login/login.dart';

class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image(image: const AssetImage(tWelcomeScreenImage),height: size.height * 0.2,),
          Text(tSignUpSubTitle,
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight -10 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text(tFullName),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline_outlined,
                  color :tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: tSecondaryColor)
                ),
              ),
            ),
            const  SizedBox(
              height: tFormHeight -10,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text(tEmail),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined,
                  color :tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor)
                ),
              ),
            ),
            const SizedBox(height: tFormHeight -20,),
            TextField(
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers,
                  color :tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor)
                ),
              ),
            ),
            SizedBox(height: tFormHeight -20,),
            TextField(
              decoration: const InputDecoration(
                label: Text(tPassword),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.fingerprint,
                  color :tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor)
                ),
              ),
            ),
            SizedBox(height: tFormHeight -10,),

           Column(
             children: [
               Container(
                 height: 70.0,
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
                     child: Text(tSignup,
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
        ),
      ),
    );
  }
}

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(tGoogleLogoImage), width: 20.0,),
            onPressed: (){},
            label: Text(tSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: tFormHeight -20,
        ),
        TextButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => loginScreen()),
          );
        },
          child: Text.rich(
            TextSpan(
                text: tAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyMedium,
                children: const[
                  TextSpan(
                    text: tLogin,
                    style: TextStyle(color: Colors.blue),
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}