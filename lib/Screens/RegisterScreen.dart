import 'package:ecommerce/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';
import '../Widgets/AuthenticationTextForm.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isRememberMe = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  "Store",
                  style: TextStyle(
                    color: GlobalColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 50,),
                Text(
                  "Login to the app",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Text(
                      "Register",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: GlobalColors.primaryColor,
                          decorationThickness: 5
                      ),
                    ),



                  ],
                ),
                Divider(),
                SizedBox(height: 20,),
                TextFormGlobal(controller: firstnameController, text: "Enter firstName", textInputType: TextInputType.text, obscure: false),
                SizedBox(height: 20,),
                TextFormGlobal(controller: lastnameController, text: "Enter lastName", textInputType: TextInputType.text, obscure: false),
                SizedBox(height: 20,),
                TextFormGlobal(controller: emailController, text: "Enter email", textInputType: TextInputType.text, obscure: false),
                SizedBox(height: 20,),
                TextFormGlobal(controller: passwordController, text: "Enter password", textInputType: TextInputType.visiblePassword, obscure: true,SuffixIcon: Icons.visibility_off,),
                SizedBox(height: 20,),
                TextFormGlobal(controller: confirmPasswordController, text: "Confirm password", textInputType: TextInputType.visiblePassword, obscure: true,SuffixIcon: Icons.visibility_off,),


                SizedBox(height: 100,),
                Container(
                  padding: EdgeInsets.only(top: 7),
                  height: 40,
                  width: 260,
                  decoration: BoxDecoration(
                    color: GlobalColors.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
