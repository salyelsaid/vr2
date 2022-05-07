import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/screens/custmer_or_eng/view.dart';
import 'package:vr/widgets/button.dart';
import 'package:vr/widgets/text_filed.dart';

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
              Text("Virtual Home".tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Text("User Login".tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                labelText: "username".tr(),
              ),
              customTextField(
                obscure: true,
                hintText: "",
                suffixicon: Icons.password,
                labelText: "password".tr(),
              ),
           const   SizedBox(height: 20,),
               TextButton(
                  onPressed: () {
                          Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const CustmerOrEng()));

                  },
                  child: Text(
                    "new user sign up".tr(),
                    style: const TextStyle(color: Colors.white),
                  )),
                             const   SizedBox(height: 50,),

              CustomButton(
                text: "login".tr(),
                color: Colors.amber,
                page: () {},
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}
