
import 'package:flutter/material.dart';
class cht extends StatelessWidget {
  final ImageProvider? backgroundImage;
  final String? title;
  final String? title2;
  final String?tra;
  final IconData? icn;
  final Color?clr;
  const cht({Key? key,required this.backgroundImage,required this.title,required this.title2,required this.tra,required this.icn,required this.clr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading:CircleAvatar(
        backgroundImage: backgroundImage
      ) ,
      title: Text(title!,style: TextStyle(color: Colors.white),),
      subtitle: Text(title2!,style: TextStyle(color: Colors.white60),),
      trailing: Column(
        children: [
          Text(tra!,style: TextStyle(color: Colors.white60),),
          Icon(icn,color:clr),

        ],
      ),
    );
  }
}
