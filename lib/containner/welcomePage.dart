import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Colors.dart';
import '../Login/login.dart';
import '../signup/signup.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage),height: height * 0.6,),
            Text(
              'Welcome to Sim Banking',
              style: TextStyle(
              fontSize: 25.0,
                fontWeight: FontWeight.bold,
            ),),
             Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                      onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => loginScreen()),
                      );
                    },
                        child: Text(tLogin,
                          style: TextStyle(
                              fontSize: 25.0,
                          ),
                        ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tSecondaryColor,
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      ),
                    ),
                ),
              SizedBox(width: 15.0),
                Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp()),
                        );
                      },
                        child: Text(tRegistrer,
                        style: TextStyle(
                          fontSize: 25.0,

                        ),
                        ),
                      style: OutlinedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        backgroundColor: tSecondaryColor,
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),),

                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
