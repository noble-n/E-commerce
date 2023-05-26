import 'package:ecommerce/Screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';
import '../Widgets/AuthenticationTextForm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                    Text(
                        "Sign In",
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
                    SizedBox(width: 25,),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                          "Register",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                    ),

                  ],
                ),
                Divider(),
                SizedBox(height: 20,),
                TextFormGlobal(controller: emailController, text: "Enter email", textInputType: TextInputType.text, obscure: false),
                SizedBox(height: 20,),
                TextFormGlobal(controller: passwordController, text: "Enter password", textInputType: TextInputType.visiblePassword, obscure: true,SuffixIcon: Icons.visibility_off,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Theme(
                              data: ThemeData(unselectedWidgetColor: GlobalColors.primaryColor),
                              child: Checkbox(
                                value: isRememberMe,
                                checkColor: Colors.white,
                                activeColor: GlobalColors.primaryColor,
                                onChanged: (value){
                                  setState(() {
                                    isRememberMe = value!;
                                  });
                                },
                              ),
                          ),
                          Text("Remember me")
                        ],
                      ),
                    ),
                    Text(
                        "Forgot Password?",
                    style: TextStyle(
                      color: GlobalColors.primaryColor,
                    ),)
                  ],
                ),


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
                    "Sign In",
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
