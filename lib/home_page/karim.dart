import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vr/home_page/home.dart';
import 'package:vr/home_page/karim_i.dart';

class Vr extends StatefulWidget {
  const Vr({ Key key}) : super(key: key);

  @override
  _VrState createState() => _VrState();
}

class _VrState extends State<Vr> {
  int add = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text(
          'VR',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items:  [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Test() ;
              }));
            },
            icon: const Icon( Icons.home,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Vr() ;
              }));
            },
            icon: const Icon( Icons.person,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Vra() ;
              }));
            },
            icon: const Icon( Icons.add,
              size: 30,
              color: Colors.white,),
          ),
        ],
        color: Colors.black,
        backgroundColor: Colors.white38,
        animationCurve: Curves.easeInOutExpo,
        animationDuration: const Duration(milliseconds: 500),
        height: 60,
        index: add,
        onTap: (index) {
          setState(() {
            add = index;
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
              color: Colors.green[300],
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
                        color: Colors.green[300],
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
                                  image: AssetImage('assets/images/kareem.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            child: const Text(
                              '??/???????? ??????????',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 40,
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
