import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';


class Search_Bar extends StatelessWidget {
  const Search_Bar({Key? key, required this.searchController}) : super(key: key);
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10,right: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow:[
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child:TextFormField(
        controller: searchController,
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1,color: Colors.white),
          ),
          icon: Icon(Icons.search,color: GlobalColors.primaryColor,),
          hintText: "Search here ...",
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 5,left: 10),
          hintStyle:const TextStyle(
              height: 0,
              fontSize: 18,
              color: Colors.black26
          ),
        ),
      ),
    );
  }
}
