import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../NavBar/navigationbar.dart';
import 'appdataimage.dart';
import 'displayimage.dart';
import '../Indicator/indicator.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  var _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: NavigationRoute(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 10,
        shadowColor: Colors.black,
        title: Text(
          'APJ Abdul Kalam',
          style: TextStyle(fontSize: 20,fontFamily: "Poppins",
              color: Colors.black,letterSpacing: 0.5),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) =>
          [
            PopupMenuItem(value: 1, child: Text('Share',style:TextStyle(
            fontFamily: 'Urbanist',fontWeight: FontWeight.bold,
          ),)
            ),
          ],
            elevation: 5,
            onSelected: (value){
               if(value==1){
                 _shareInfo();//Method call
               }
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
           height: 430,
            width: 400,
            child: PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    _selectedindex=index;
                  });
                },
              controller: PageController(viewportFraction: 0.7),
              itemCount: applistimage.length,
              itemBuilder: (context, index){
                  var _scale = _selectedindex==index?1.0:0.8;//Operater Conditional
                  /*
                  * int a = select == index ? "It is True" :"It is False";
                  * print(a);
                  *
                  * */
                return TweenAnimationBuilder(
                    tween: Tween(begin: _scale, end: _scale),
                    duration: Duration(milliseconds: 300),
                    child: DisplayImage(appDataImage: applistimage[index]),
                    builder: (context, value, child){
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    }
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(applistimage.length, (index) => Indicator(
                  isActive : _selectedindex  == index ? true : false))
            ],
          )
        ],
      ),
    );
  }
  _shareInfo() async{
    print('---------------->Share');
    print(applistimage[_selectedindex].image);

    ByteData imagebyte= await rootBundle.load(applistimage[_selectedindex].image);

    final temp= await getTemporaryDirectory();
    print('Directory : $temp');

    final path= '${temp.path}/Winners.png';
    print('Image Path : $path');

    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path], text: '');
  }
}
