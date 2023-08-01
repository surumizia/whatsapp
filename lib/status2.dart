import 'package:flutter/material.dart';
class st2 extends StatelessWidget {
  final String?name;
  final String?tym;
  final ImageProvider?stsimg;
  final Color?clr;
  const st2({Key? key,required this.name,required this.tym,required this.stsimg,required this.clr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading:Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: clr!),
                borderRadius: BorderRadius.circular(25)
              ),
              child: CircleAvatar(
                backgroundImage:stsimg,
              ),
            ),
            title: Text(name!,style: TextStyle(color: Colors.white),),
            subtitle:Text(tym!,style: TextStyle(color: Colors.white,fontSize: 10),),
          ),
        ],
      ),
    );
  }
}
