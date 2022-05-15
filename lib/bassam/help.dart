import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home_page/home.dart';
import '../home_page/rabab.dart';
import 'favorite.dart';
import 'notification.dart';

class Help extends StatelessWidget {
  const Help({ Key key, room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('المساعده'),
        leadingWidth: 115,
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
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView(children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(
                Icons.password_outlined,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'هل نسيت كلمة المرور',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.credit_card,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'طرق الدفع',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'كيف استخدم محرك البحث',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.rate_review,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'كيف اقوم بتقييم المهندس',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
