import 'package:ecommerce/Screens/Homepage.dart';
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
                const SizedBox(height: 50,),
                const Text(
                    "Login to the app",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Text(
                        "Sign In",
                    style: TextStyle(
                        shadows: const [
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
                    const SizedBox(width: 25,),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: const Text(
                          "Register",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                    ),

                  ],
                ),
                const Divider(),
                const SizedBox(height: 20,),
                AuthenticationTextFormGlobal(controller: emailController, text: "Enter email", textInputType: TextInputType.text, obscure: false),
                const SizedBox(height: 20,),
                AuthenticationTextFormGlobal(controller: passwordController, text: "Enter password", textInputType: TextInputType.visiblePassword, obscure: true,suffixIcon: Icons.visibility_off,),

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
                          const Text("Remember me")
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


                const SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 7),
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                      color: GlobalColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
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
