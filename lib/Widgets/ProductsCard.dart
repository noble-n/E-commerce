import 'package:flutter/material.dart';

import '../AppUtils/global.colors.dart';


class ProductsCard extends StatefulWidget {
  ProductsCard({Key? key}) : super(key: key);
  _ProductsCardState createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {

  void initState(){
    super.initState();

  }

  var list = ['Accessories','Clothes','Phones','Computers'];
  var images = [
    Image.asset("Images/ProductImages/AirPods.png"),
    Image.asset("Images/ProductImages/dress.png"),
    Image.asset("Images/ProductImages/sofa.png"),
    Image.asset("Images/ProductImages/watch.png"),

  ];
  @override
  Widget build(BuildContext context){

    return GridView.builder(
          itemCount: list.length,
        physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    alignment: Alignment.center,
                    height: 100,
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
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 150,
                            child: FittedBox(
                                child: images[index],
                              fit: BoxFit.fitWidth,
                            )
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 5,left: 5,top: 5),
                          child: Column(
                            children: [
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
                            ],
                        ),
                        ),

                        SizedBox(),
                      ],
                    )

                ),
              ),
            );
          }
    );
  }
}