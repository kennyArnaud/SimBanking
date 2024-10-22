import 'package:flutter/material.dart';
import 'forget_password_bottom_sheet.dart';

class forget_password extends StatelessWidget {
  const forget_password({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });

  final IconData btnIcon;
  final String title,subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey,
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 60,),
            SizedBox(width: 15.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6,),
                Text(subTitle ,style: Theme.of(context).textTheme.bodyText2,),
              ],
            )
          ],
        ),
      ),
    );
  }
}