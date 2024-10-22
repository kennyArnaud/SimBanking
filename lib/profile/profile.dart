import 'package:flutter/material.dart';
import '';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const // Generated code for this Column Widget...
    Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
               Image(image: AssetImage('assets/google.png',),
                width: 44,
                height: 14,
                fit: BoxFit.cover,
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                 'balance'
                ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '1700Fbu'
                ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
             'numero de compte'
                ),

              Text(
               '5/20'
                ),
            ],
          ),
        ),
      ],
    )
    ;
  }
}