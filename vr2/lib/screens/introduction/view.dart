import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:vr/screens/custmer_or_eng/view.dart';
import 'package:vr/screens/introduction/controller.dart';
import 'package:vr/screens/introduction/model.dart';
import 'package:vr/screens/sign_in/view.dart';
//import 'package:vr/screens/sign_up/3amel.dart';

class AppIntro extends StatefulWidget {
  const AppIntro({Key key}) : super(key: key);

  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  PageController controller;
  GrdidViewModel grdidViewModel = GrdidViewModel();
  HomeController homeController = HomeController();
  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: PageIndicatorContainer(
          key: key,
          child: PageView.builder(
            itemCount: homeController.gridViewModel.length,
            controller: controller,
            reverse: true,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Image.asset(
                    homeController.gridViewModel[index].image,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                          child: Text(
                        homeController.gridViewModel[index].title1,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          homeController.gridViewModel[index].title2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CustmerOrEng()));
                            },
                            child: Text(
                              "انشاء حساب".tr(),
                              style: const TextStyle(color: Colors.blueGrey),
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                        child: Text(
                          "لدي حساب بالفعل".tr(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          align: IndicatorAlign.bottom,
          length: homeController.gridViewModel.length,
          indicatorSpace: 10.0,
          
        ),
      ),
    );
  }
}
