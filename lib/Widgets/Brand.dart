import 'package:flutter/material.dart';




class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {

  @override
  void initState(){
    super.initState();
  }

  var list = ['Nike','Mavi','Gucci','Apple','Adidas','Logitech','Samsung','Hp'];
  var images = [
    Image.asset("Images/Nike.png",),
    Image.asset("Images/Mavi.png"),
    Image.asset("Images/Gucci.png"),
    Image.asset("Images/Apple.png"),
    Image.asset("Images/Adidas.png"),
    Image.asset("Images/Logitech.png"),
    Image.asset("Images/Samsung.png"),
    Image.asset("Images/Hp.png"),

  ];
  @override
  Widget build(BuildContext context){
    return GridView.builder(
        itemCount: list.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8
        ),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                setState(() {

                });
              },
              // child: Container(
              //     padding: EdgeInsets.only(top: 10,bottom: 10),
              //     alignment: Alignment.center,
              //     height: 10,
              //     decoration: BoxDecoration(
              //       color: Colors.white54,
              //       borderRadius: BorderRadius.circular(6),
              //
              //     ),
              //     child:
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                            )
                          ],
                          ),
                          child: images[index]
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        list[index],
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )

              ),
           // ),
          );
        }
    );
  }
}