import 'package:flutter/material.dart';
import 'package:vr/screens/custmer_or_eng/view.dart';
import 'package:vr/widgets/button.dart';
import 'package:vr/widgets/text_filed.dart';

import '../../home_page/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

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
          ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Text("منزل افتراضي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const Text("تسجيل الدخول كمستخدم",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.person,
                labelText: "اسم المستخدم",
              ),
              customTextField(
                obscure: true,
                hintText: "",
                suffixicon: Icons.password,
                labelText: "كلمة المرور",
              ),
           const   SizedBox(height: 20,),
               TextButton(
                  onPressed: () {
                          Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const CustmerOrEng()));

                  },
                  child: const Text(
                    "انشاء حسا جديد",
                    style: TextStyle(color: Colors.white),
                  )),
                             const   SizedBox(height: 50,),

              CustomButton(
                text: "تسجيل الدخول",
                color: Colors.amber,
                page: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  const Test()));
                },
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}
