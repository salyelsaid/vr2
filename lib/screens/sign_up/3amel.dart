import 'package:flutter/material.dart';
import 'package:vr/screens/sign_in/view.dart';
import 'package:vr/widgets/button.dart';
import 'package:vr/widgets/text_filed.dart';

class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({Key key}) : super(key: key);

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
                            "assets/images/kisspng-project-manager-project-management-body-of-knowled-sas-discount-broker-make-money-on-forex-5b67e1ee56a080.9259451315335347023548-removebg-preview.png"),
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
                labelText: "اسم المستخدم",
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.phone,
                labelText: "رقم الهاتف",
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.question_answer,
                labelText: "رقم الهويه",
              ),
              customTextField(
                obscure: true,
                hintText: "",
                suffixicon: Icons.password,
                labelText: "كلمه المرور",
              ),
              customTextField(
                obscure: false,
                hintText: "",
                suffixicon: Icons.info,
                labelText: "تاريخ الميلاد",
              ),
              CustomButton(
                text: "انشاء حساب",
                color: Colors.amber,
                page: () {},
              ),
              TextButton(
                  onPressed: () 
                  {
                     Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child: const Text(
                    "لدي حساب بالفعل",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
