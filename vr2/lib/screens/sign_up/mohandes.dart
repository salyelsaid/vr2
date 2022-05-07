import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/screens/sign_in/view.dart';
import 'package:vr/widgets/button.dart';
import 'package:vr/widgets/text_filed.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key key}) : super(key: key);

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
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(color: Colors.white),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/download-removebg-preview (1).png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.person,
                labelText: "username".tr(),
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.phone,
                labelText: "number".tr(),
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.question_answer,
                labelText: "id".tr(),
              ),
              customTextField(
                obscure: true,
                hintText: "",
                suffixicon: Icons.password,
                labelText: "password".tr(),
              ),
              Row(
                children: [
                  Expanded(
                    child: customTextField(
                      obscure: false,
                      hintText: "",
                      // suffixicon: Icons.password,
                      labelText: "specialty".tr(),
                    ),
                  ),
                  Expanded(
                    child: customTextField(
                      obscure: false,
                      hintText: "",
                      // suffixicon: Icons.info,
                      labelText:"مهارات",
                    ),
                  ),
                ],
              ),
              CustomButton(
                text: "Sign up".tr(),
                color: Colors.amber,
                page: () {},
              ),
              TextButton(
                  onPressed: () {                     Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
},
                  child: Text(
                    "I have an account".tr(),
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
