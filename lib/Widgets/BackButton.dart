import 'package:flutter/material.dart';

class BackButtonGlobal extends StatelessWidget{
  const BackButtonGlobal({Key? key, required this.widget}) : super(key: key);
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
          onTap: () {
              Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => widget),
                 );
              },
        child: const Icon(Icons.arrow_back,color: Colors.white,size: 25,),
      ),
    );

  }
}
