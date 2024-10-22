import 'package:flutter/material.dart';

const tPrimaryColor = Color(0xFFFFE400);
const tSecondaryColor = Color(0xFF272727);
const tAccentColor = Color(0xFF001BFF);

const tWhiteColor = Colors.white;
const tDarkColor = Color(0xff000000);
const tCardBgColor = Color(0xFFF7F6F1);

const tOnBoardingPage1Color = Colors.white;
const tOnBoardingPage2Color = Color(0xfffddcdf);
const tOnBoardingPage3Color = Color(0xffffdcbd);

const String tWelcomeScreenImage = "assets/logo1.png";
const tDefaultSize = 30.0;
const tSplashContainerSize = 30.0;
const tButtonHeight = 15.0;

const String tLogin = "Login";
const String tRegistrer= "SignUp";

class TAppTheme{

}



class ButtonForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Mon Bouton'),
            ),
          ),
        );
  }
}
