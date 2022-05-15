import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vr/home_page/mohamed_i.dart';
import 'package:vr/home_page/home.dart';

class One extends StatefulWidget {
  const One({ Key key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  int add = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text(
          '3d',
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
                return const Mohamed() ;
              }));
            },
            icon: const Icon( Icons.person,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Mohamed() ;
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
              color: Colors.red[300],
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
                        color: Colors.red[300],
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
                                  image: AssetImage('assets/images/moo.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            child: const Text(
                              'م/محمد المغاوري',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 120,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                   image: const DecorationImage(
                     image: AssetImage('assets/images/29.png'),
                     fit: BoxFit.cover,
                   ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/2z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/H001.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/C001.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/1z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/2z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/3z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/4z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/5z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/6z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/7z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/8z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/9z.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/A027.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/D003.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/D004.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/D005.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/E006.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/j008.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M004.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M011.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/100.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/101.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/102.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/103.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/104.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/105.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/106.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/107.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/108.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/109.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/110.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/111.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/112.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/113.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/114.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 17),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/115.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/116.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 5,left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/117.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
