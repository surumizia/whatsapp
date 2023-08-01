import 'package:flutter/material.dart';
class com extends StatelessWidget {
  const com({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/image/img.png"),




              ),
            ),
           ),
          ),
        Text("Introducing communities",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 20),),
        SizedBox(height: 10,),
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Text("Easily organise your releted group's and sent",style: TextStyle(color: Colors.white60,fontSize: 13,fontWeight: FontWeight.normal),),
        Text("  announcements.Now your communities,like",style: TextStyle(color: Colors.white60,fontSize: 13,fontWeight: FontWeight.normal),),
        Text("neighourhood or  schoools,can have their own space",style: TextStyle(color: Colors.white60,fontSize: 13,fontWeight: FontWeight.normal),),
        SizedBox(height: 15),
        TextButton(onPressed: (){}, child:Text("Start yor community",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w100),),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green.shade800),
                padding:MaterialStateProperty.all(EdgeInsets.symmetric(horizontal:50.0,vertical: 10.0 ),) ,
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)))
            ),)
    ],
    ),
    ],
    );
  }
}
