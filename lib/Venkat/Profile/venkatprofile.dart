import 'package:flutter/material.dart';

import '../NavBar/navigationbar.dart';


class VenkatProfile extends StatelessWidget {
  const VenkatProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: NavigationRoute(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade700,
        elevation: 10,
        shadowColor: Colors.black,
        title: Text('Venkat Profile',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                letterSpacing: 0.5)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(70),
                  child: Image.asset('image/venkat.png'),
                ),
              ),
              // CircleAvatar(
              //   radius: 90,
              //   backgroundImage: AssetImage('assets/images/venkat.png'),
              // ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Venkatesh Krishnan',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'Urbanist',
                      letterSpacing: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'Urbanist',
                      letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 20,
                width: 280,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.black45,
                  elevation: 5,
                  shadowColor: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    title: Text(
                      '+91 9790177613',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 3, bottom: 10, left: 7, right: 7),
                child: Card(
                  color: Colors.black45,
                  elevation: 5,
                  shadowColor: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                    title: Text(
                      'venkateshkrishnan@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
