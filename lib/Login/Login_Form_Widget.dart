import 'package:flutter/material.dart';
import '../containner/containner.dart';
import '../signup/signup.dart';
import 'package:bankingsim/Forget_password/forget_password_bottom_sheet.dart';
import 'package:bankingsim/HomePage/home.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText:tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const  SizedBox(
              height: tFormHeight -10,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText:tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
            const SizedBox(height: tFormHeight -20,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  forgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(tForgetPassword),
              ),
            ),
            SizedBox(width: double.infinity),
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
                           Navigator.push(context,
                           MaterialPageRoute(builder: (context) => HomePage())
                           );
                    },
                    child: Text(tLogin,
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



class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        Image(image: const AssetImage(tWelcomeScreenImage),height: size.height * 0.2,),
    Text(tLoginTitle,
    style: TextStyle(
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
    ),
    ),
        ]
    );
  }
}

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});
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
                builder: (context) => SignUp()),
          );
        },
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: const[
                  TextSpan(
                    text: tSignup,
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


