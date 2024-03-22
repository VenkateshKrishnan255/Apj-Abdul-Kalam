

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../NavBar/navigationbar.dart';

class My_Comapny extends StatelessWidget {
  const My_Comapny({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: NavigationRoute(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade700,
        elevation: 10,
        shadowColor: Colors.black,
        title: Text(
          'Company Profile',
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Poppins',
              letterSpacing: 0.5),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(60),
                        child: Image.asset('assets/images/tidy.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Tidy Life India Pvt Ltd',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
                width: 250,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Colors.black45,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.greenAccent,
                    ),
                    title: Text(
                      '+91 8610338291',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Colors.black45,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Colors.black45,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.lightBlue,
                    ),
                    title: Text(
                      'S2,SK Illam,\n2nd Street Nanmangalam,\nChennai-600129',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Urbanist'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
