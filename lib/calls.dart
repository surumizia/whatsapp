
import 'package:flutter/material.dart';
class call extends StatelessWidget {
  final Color?colors;
  final ImageProvider?pic;
  final IconData?icn;
  final String?tit;
  final String?sub;
  final IconData?tra;
  final IconData?callicn;
  final Color?color;
  const call({Key? key,required this.colors,required this.pic,required this.icn,required this.tit,required this.sub,required this.tra,required this.callicn,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor:colors,
              backgroundImage: pic,
              child: Icon(icn),
            ),title: Text(tit!,style: TextStyle(color: Colors.white,),),
            subtitle: Row(
              children: [
                Icon(callicn,color:color,size: 13,),
                Text(sub!,style: TextStyle(color: Colors.white60,fontSize: 13),),

              ],
            ),
            trailing: Icon(tra,color: Colors.green,),
          ),

        ],
      ),
    );
  }
}
