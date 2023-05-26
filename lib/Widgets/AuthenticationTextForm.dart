import 'package:ecommerce/Screens/LoginScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';


class TextFormGlobal extends StatefulWidget{
  TextFormGlobal ({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    this.SuffixIcon,})
    : super (key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final IconData? SuffixIcon;

  @override
  State<TextFormGlobal> createState() => _TextFormGlobalState();
}

class _TextFormGlobalState extends State<TextFormGlobal> {
  bool _passwordVisible = true;

  @override



  void _togglePasswordView() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
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
        obscureText: _passwordVisible == false || widget.obscure == false
            ? false : true,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1,color: GlobalColors.primaryColor),
          ),
          hintText: widget.text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
          hintStyle:const TextStyle(
            height: 1,
          ),
          suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child : Icon(
              _passwordVisible
                  ? widget.SuffixIcon
                  : Icons.visibility,color:GlobalColors.primaryColor,
              //Icons.visibility, color: Color(0xff138D1f),
            ),
          ),
        ),
      ),
    );
  }
}