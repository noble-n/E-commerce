import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';


class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var ChosenTimeSlot = null;
  void initState(){
    super.initState();
    ChosenTimeSlot = "";
  }

var list = ['Accessories','Clothes','Phones','Computers','Dry Foods','Grocery','Furniture','More'];
var icons = [
  Icon(Icons.mouse,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.dry_cleaning_rounded,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.phone_iphone,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.computer,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.set_meal_outlined,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.fastfood_outlined,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.chair,color: GlobalColors.primaryColor,size: 40,),
  Icon(Icons.more_horiz_outlined,color: GlobalColors.primaryColor,size: 40,),
];
  @override
  Widget build(BuildContext context){
    return GridView.builder(
        itemCount: list.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.9
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                    ChosenTimeSlot = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  alignment: Alignment.center,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           icons[index],
                           Text(
                             list[index],
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                      ),
                         ],
                       )

                ),
              ),
            );
          }
      );
  }
}