
import 'package:bankingsim/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:bankingsim/containner/containner.dart';
import 'home.dart';


class LDrawer extends StatelessWidget {
  const LDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: tPrimaryColor,
                ),
                child: Text('Header'),
              ),

              ListTile(
                leading: const Icon(
                  Icons.message,
                ),
                title: const Text('message'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Email'),
                leading: const Icon(
                  Icons.email,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('phone'),
                leading: const Icon(
                  Icons.phone,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('calendrier'),
                leading: const Icon(
                  Icons.calendar_month_outlined,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(
                  Icons.settings,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
    );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    profile(),
    Transation(),


  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
         backgroundColor: tPrimaryColor,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_edu_outlined),
            label: 'transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          ),
        ],
      );
  }
}


class Transation extends StatelessWidget {
  const Transation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ReusableCart extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function? onPress;

  ReusableCart({required this.colour, this.cardChild,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress,
      child: Container(
        child:cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 120.0,
        width: 30.0,
      ),
    );
  }
}
class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;
  IconContent({this.icon,this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.monetization_on_outlined,
          size: 20.0,
        ),
        SizedBox(height: 18.0),
        Text(
          label??'',
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),),
      ],
    );
  }
}

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),

    );
  }
}



