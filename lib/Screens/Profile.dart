import 'package:ecommerce/Screens/Homepage.dart';
import 'package:ecommerce/Widgets/BackButton.dart';
import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: GlobalColors.primaryColor
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                    child: BackButtonGlobal(widget: HomePage())
                ),
                 const SizedBox(height: 10,),
                 Column(
                   children: const [
                     CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('Images/profilepicture.png'),
                ),
                     SizedBox(height: 10,),
                     Text(
                         "Nwabuike Noble",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 19,
                         fontWeight: FontWeight.bold,
                       ),
                     )
                   ],
                 ),
                const SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      ProfileTextForm(controller: firstnameController, text: "First Name", textInputType: TextInputType.text, obscure: false,icon: Icons.person_2_outlined,),
                      ProfileTextForm(controller: lastnameController, text: "Last Name", textInputType: TextInputType.text, obscure: false,icon: Icons.person_2_outlined,),
                      ProfileTextForm(controller: emailController, text: "Email", textInputType: TextInputType.emailAddress, obscure: false,icon: Icons.alternate_email_outlined,),
                      ProfileTextForm(controller: phoneNumberController, text: "Phone No", textInputType: TextInputType.phone, obscure: false,icon: Icons.phone_enabled_outlined,),
                      ProfileTextForm(controller: addressController, text: "Address", textInputType: TextInputType.phone, obscure: false,icon: Icons.home_outlined,),
                      SizedBox(height: 30,),
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
                            "Submit",
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

              ],
            ),
          ),
        ),
      ),
      //bottomNavigationBar: const BottomNavBar(),
    );
  }
}



class ProfileTextForm extends StatefulWidget{
  const ProfileTextForm ({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    required this.icon,
    this.width,
    })
      : super (key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final IconData icon;
  final int? width;


  @override
  State<ProfileTextForm> createState() => _ProfileTextFormState();
}

class _ProfileTextFormState extends State<ProfileTextForm> {

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            Icon(widget.icon,color: GlobalColors.primaryColor,),
            const SizedBox(width: 10,),
            Text(widget.text,style: const TextStyle(fontSize: 15),)
          ],
        ),
        const SizedBox(height: 10,),
        Container(
          height: 45,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),

              boxShadow:[
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ]

          ),
          child: TextFormField(

            controller: widget.controller,
            keyboardType: widget.textInputType,
            //obscureText: widget.obscure,
            obscureText: widget.obscure,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1,color: GlobalColors.primaryColor),
              ),
              //hintText: widget.text,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10),
              hintStyle:const TextStyle(
                height: 1,
              ),

            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
