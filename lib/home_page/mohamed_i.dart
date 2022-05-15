import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vr/home_page/mohamed.dart';
import 'package:vr/home_page/home.dart';

class Mohamed extends StatefulWidget {
  const Mohamed({ Key key}) : super(key: key);

  @override
  _MohamedState createState() => _MohamedState();
}

class _MohamedState extends State<Mohamed> {
  int person = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text(
          'م/محمد المغاوري',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Test();
              }));
            },
            icon: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const One() ;
              }));
            },
            icon: const Icon( Icons.person,
              size: 30,
              color: Colors.white,),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Mohamed();
              }));
            },
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        color: Colors.black,
        backgroundColor: Colors.white38,
        animationCurve: Curves.easeInOutExpo,
        animationDuration: const Duration(milliseconds: 500),
        height: 60,
        index: person,
        onTap: (index) {
          setState(() {
            person = index;
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
             Container(
               margin: const EdgeInsets.only(top: 110),

               height: 300,
               child: Column(
                 children: const [
                   ListTile(
                     title: Text(
                       '01552148112',
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
                       'مهندس تصميم داخلي',
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
