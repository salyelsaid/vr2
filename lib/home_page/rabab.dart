import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vr/home_page/home.dart';

import '../bassam/favorite.dart';
import '../bassam/notification.dart';

class Clint extends StatefulWidget {
  const Clint({ Key key}) : super(key: key);

  @override
  _ClintState createState() => _ClintState();
}

class _ClintState extends State<Clint> {
  int index = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        title: const Text(
          'Rabab Asim',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items:  [
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
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              color: Colors.yellow[800],
              height: 160,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 20,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        color: Colors.yellow[800],
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 15,
                              offset: Offset(10, 10),
                              blurRadius: 10),
                        ],
                      ),
                      width: 330,
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/rabab.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            child: const Text(
                              'Rabab Asim',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 110),

              height: 300,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      '01090295887',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'المنصوره',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    leading: Icon(
                      Icons.add_location,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'مهندسه برمجه',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    leading: Icon(
                      Icons.align_vertical_bottom_outlined,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
