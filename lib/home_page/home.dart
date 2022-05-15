import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vr/bassam/favorite.dart';
import 'package:vr/bassam/help.dart';
import 'package:vr/bassam/notification.dart';
import 'package:vr/bassam/setting.dart';
import 'package:vr/home_page/mohamed.dart';
import 'package:vr/home_page/rabab.dart';
import 'package:vr/home_page/ahmed.dart';
import 'package:vr/home_page/karim.dart';

class Test extends StatefulWidget {
  const Test({ Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int index = 2;

  get room => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Virtual Home',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        elevation: 20,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: const Icon(Icons.search),
          ),
        ],
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
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: (Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80, right: 180),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/rabab.png')),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(right: 150, top: 10),
                child: const Text(
                  'Rabab Asim',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 40,
                endIndent: 30,
                indent: 20,
              ),
               ListTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const Clint() ;
                  }));
                },
                title: const Text(
                  'حسابي',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                leading: const Icon(
                  Icons.person,
                  color: Colors.blueGrey,
                  size: 30,
                ),
              ),
               ListTile(
                 onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_)=> Help(room:room),
                  ),
                  ),
                title: const Text(
                  'المساعده',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                leading: const Icon(
                  Icons.help,
                  color: Colors.blueGrey,
                  size: 30,
                ),
              ),
               ListTile(
                onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_)=> Setting(room:room),
                  ),
                  ),
                title: const Text(
                  'الاعدادات',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                leading: const Icon(
                  Icons.settings,
                  color: Colors.blueGrey,
                  size: 30,
                ),
              ),
              const ListTile(
                title: Text(
                  'تواصل معنا  ',
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
              const ListTile(
                title: Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.blueGrey,
                  size: 30,
                ),
              ),
            ],
          )
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                sectionCard(),
                sectionCard1(),
                sectionCard2(),
                sectionCard3(),
                sectionCard4(),
              ],
            ),
          ),
          Container(
            height: 160,
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 290,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                       Container(
                        width: 140,
                        height: 150,
                        decoration:  const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/3d.png'))),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 3, bottom: 5, top: 10),
                        child: Column(
                          children:  [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return const One();
                                }));
                              },
                              child: const Text(
                                '3D',
                                style: TextStyle(color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'هل تبحث عن ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
                              'تصميم ثلاثي الابعاد',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 290,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 150,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/vedio.png'))),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 10, bottom: 3, top: 10),
                        child: Column(
                          children:  [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const Video();
                            }));
                              },
                              child: const Text(
                                'فيديو',
                                style: TextStyle(color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'احصل علي تصميم',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              'لمنزل احلامك',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 290,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 150,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/vr.png'))),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 3, bottom: 5, top: 10),
                        child: Column(
                          children:  [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return const Vr();
                                }));
                              },
                              child: const Text(
                                'VR',
                                style: TextStyle(color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              ' استمتع بمنزل احلامك ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
                              ' مع الواقع الافتراضي ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'عن ماذا تبحث ؟',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 240,
            width: 300,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 150,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/29.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Text(
                            'غرف النوم',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 150,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/C001.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Text(
                            'غرف المعيشه',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 150,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/H001.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Text(
                            'غرف المطبخ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 150,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/2z.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Text(
                            'الحمامات',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionCard() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/michel.png'),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Michel',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget sectionCard1() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/Emma.jpg'),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Emma',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget sectionCard2() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/kevin.png'),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Kevin',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget sectionCard3() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/john.jpg'),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'john',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget sectionCard4() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/esabella.jpg'),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Isabella',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: const Icon(Icons.close))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text('Search'));
  }
}
