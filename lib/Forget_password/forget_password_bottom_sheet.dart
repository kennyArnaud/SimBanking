import 'package:flutter/material.dart';
import 'package:bankingsim/containner/containner.dart';
import 'forget.dart';
import 'forget_pmail.dart';
import 'forget_Pphone.dart';

class forgetPasswordScreen{

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) =>Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPassword, style: Theme.of(context).textTheme.headline4,),
              Text(tForgetMailSubTitle,style: Theme.of(context).textTheme.bodyText2,),

              const SizedBox(height: 30.0,),

              forget_password(
                btnIcon: Icons.email_outlined,
                title: tEmail,
                subTitle: tResetViaEMail,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgetPmail()),
                  );
                },
              ),

              SizedBox(height: tFormHeight -10,),

              forget_password(
                btnIcon: Icons.mobile_friendly_rounded,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgetPphone()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}