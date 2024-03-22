import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Company/my_company.dart';
import '../Profile/venkatprofile.dart';
import '../QuotesImage/pageviewimage.dart';
import '../QuotesText/pageviewtext.dart';

class NavigationRoute extends StatelessWidget {
  const NavigationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'APJ Abdul Kalam',
              style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
            ),
            accountEmail: const Text(
              'Version 1.0',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 10),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/abdul6.jpg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rocket6.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: const Text("Profile",
                style: TextStyle(
                    fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => VenkatProfile())),
          ),
          ListTile(
            title: const Text(
              'Company Profile',
              style: TextStyle(
                  fontFamily: 'Urbanist', fontWeight: FontWeight.bold),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => My_Comapny())),
          ),
          ListTile(
            title: const Text('Quotes Text',
                style: TextStyle(
                    fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => PageViewtext())),
          ),
          ListTile(
            title: const Text('Qutoes Image',
                style: TextStyle(
                    fontFamily: 'Urbanist', fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => PageViewImage())),
          ),
        ],
      ),
    );
  }
}