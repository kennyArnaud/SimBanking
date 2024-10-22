import 'package:flutter/material.dart';
import 'home_page_widget.dart';
import 'package:bankingsim/containner/containner.dart';
import 'package:bankingsim/Login/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tPrimaryColor ,
        title: Text('Home'),
        actions: [ IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => loginScreen()),
            );
          },
        ),
        ],
      ),

      body:Column(
        children: [
          Container(
            height: 220.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image:AssetImage("assets/123.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCart(
                      colour: tSecondaryColor,

                    ),
                ),
                Expanded(
                  child: ReusableCart(
                    colour: tSecondaryColor,
                    cardChild: IconContent(),
                  ),
                ),
                Expanded(
                  child: ReusableCart(
                    colour: tSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 30.0),
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(38.5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 33,
                  color:Colors.red,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text:"Versement",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )
                    )
                  ]
                ),
                ),
                Spacer(),
                IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.arrow_forward_ios_outlined,size: 20.0,),),
              ],
            ),
          )
        ],
      ),

      drawer: LDrawer(),
      bottomNavigationBar: MyHomePage(),
    );
  }
}
