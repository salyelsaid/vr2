import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/screens/sign_in/view.dart';
import 'package:vr/screens/sign_up/3amel.dart';
import 'package:vr/screens/sign_up/mohandes.dart';

class CustmerOrEng extends StatelessWidget {
  const CustmerOrEng({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/7.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Virtual Home".tr(),
                style: const TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customContainer(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen1()));
                      },
                      img:
                          "assets/images/kisspng-project-manager-project-management-body-of-knowled-sas-discount-broker-make-money-on-forex-5b67e1ee56a080.9259451315335347023548-removebg-preview.png",
                      title: "mohandes".tr()),
                  customContainer(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen2()));
                      },
                      img: "assets/images/download-removebg-preview (1).png",
                      title: "custmer".tr()),
                ],
              ),
              // ignore: deprecated_member_use
              // OutlineButton(
              //     onPressed: () {
              //       translator.setNewLanguage(
              //         context,
              //         newLanguage:
              //             translator.activeLanguageCode == 'ar' ? 'en' : 'ar',
              //         remember: true,
              //         restart: true,
              //       );
              //     },
              //     child: Text(
              //       ("langs".tr()),
              //       style: const TextStyle(color: Colors.white),
              //     )),
              TextButton(
                  onPressed: () 
                  {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                  },
                  child: Text(
                    "haveaccount".tr(),
                    style: const TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  customContainer({String img, String title, Function onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ))),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
