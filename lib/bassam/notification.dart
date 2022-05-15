import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home_page/home.dart';
import '../home_page/rabab.dart';
import 'favorite.dart';

class Notifications extends StatelessWidget {
  int index = 1;

  Notifications({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        title: const Text('الاشعارات'),
        leadingWidth: 120,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 15),
            icon: const Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return  Favorite() ;
            }));
            },
            icon: const Icon(Icons.favorite,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return  Notifications() ;
            }));
            },
            icon: const Icon(Icons. notifications,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const Test() ;
            }));
            },
            icon: const Icon(Icons.home,
              size: 30,
              color: Colors.white,),
          ),

          IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Favorite() ;
            }));
            },
            icon: const Icon(Icons.chat,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Clint() ;
              }));
            },
            icon: const Icon( Icons.person,
              size: 30,
              color: Colors.white,),
          ),
        ],
        color: Colors.black,
        backgroundColor: Colors.yellow,
        animationCurve: Curves.easeInOutExpo,
        animationDuration: const Duration(milliseconds: 500),
        height: 60,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
      body: const Center(
        child: Text(
          'لا يوجد اشعارات',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
