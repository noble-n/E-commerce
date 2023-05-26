import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';


class HorizontalButtonsList extends StatefulWidget {
  HorizontalButtonsList({Key? key}) : super(key: key);
  _HorizontalButtonsListState createState() => _HorizontalButtonsListState();
}

class _HorizontalButtonsListState extends State<HorizontalButtonsList> {
  var ChosenHairstylist = null;
  // void initState(){
  //   super.initState();
  //   ChosenHairstylist = "";
  // }
  //var list = ['John Smith','Alexander','Nacho','Johnathan','Wilfred','Bob'];
  var images = [
    'Images/headphones.jpg',
    'Images/leathershoes.jpg',
    'Images/trainers.jpg',
    'Images/headphones.jpg',
    'Images/leathershoes.jpg',
    'Images/trainers.jpg',
  ];
  @override
  Widget build(BuildContext context){
    return Container(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 8.0,bottom: 8.0,right: 8.0),
                child: InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width:  300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Image.asset(images[index],width: 130,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 120),
                                height: 16,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: GlobalColors.primaryColor,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),topRight: Radius.circular(5))
                                ),
                                child: Text(
                                  "10% off",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                "Lorem ipsum 80gm",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "1pcs/box",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$49 - \$125",
                                    style: TextStyle(
                                      color: GlobalColors.primaryColor,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Row(
                                    children: [
                                      Text(
                                        "4.9",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Icon(Icons.star,color: Colors.yellow,)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15,)
                            ],
                          ),
                          SizedBox(),
                        ],
                      )

                  ),
                ),
              );
            }
        ),
      );
  }

}
