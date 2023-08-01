import 'package:flutter/material.dart';
import 'package:whatapp/calls.dart';
import 'package:whatapp/chatbox.dart';
import 'package:whatapp/community.dart';
import 'package:whatapp/popup.dart';
import 'LISTCHAT.dart';
import 'status2.dart';

class tabbar extends StatelessWidget {
  tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff075e55),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  ),
                  menu(),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xff075e55),
              child: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.groups_outlined),
                  ),
                  Tab(
                    child: Text("Chats"),
                  ),
                  Tab(
                    child: Text("Status"),
                  ),
                  Tab(
                    child: Text("Calls"),
                  ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Container(
                    child: com(),
                    color: Colors.black,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: ListView.builder(
                          itemCount: image.length,
                          itemBuilder: (BuildContext context, int index) {
                            return cht(
                              backgroundImage: NetworkImage(image[index]),
                              title: tit[index],
                              title2: sub[index],
                              tra: tim[index],
                              icn: TICK[index],
                              clr: cllr[index],
                            );
                          },
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green.shade700,
                          child: Icon(Icons.message),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        color: Colors.black87,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              st2(
                                name: 'My status',
                                tym: 'Just now',
                                stsimg: AssetImage(
                                    "lib/image/st1.jpg"),
                                clr: Colors.green,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Recent Updates",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white60),
                                ),
                              ),
                              st2(
                                name: "Thappu",
                                tym: "2 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st2.webp"),
                                clr: Colors.green,
                              ),
                              st2(
                                name: "Divya",
                                tym: "5 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st3.jpg"),
                                clr: Colors.green,
                              ),
                              st2(
                                name: "Nikhitha",
                                tym: "8 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st4.jpg"),
                                clr: Colors.green,
                              ),
                              st2(
                                name: "Arun",
                                tym: "12 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st5.jpeg"),
                                clr: Colors.green,
                              ),
                              st2(
                                name: "Devika",
                                tym: "18 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st6.jpg"),
                                clr: Colors.green,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Viewed Updates",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white60),
                                ),
                              ),
                              st2(
                                name: "Sonu",
                                tym: "45 minitues",
                                stsimg:AssetImage(
                                    "lib/image/stt2.jpg"),
                                clr: Colors.white60,
                              ),
                              st2(
                                name: "Abin",
                                tym: "58 minitues",
                                stsimg: AssetImage(
                                    "lib/image/st8.jpg"),
                                clr: Colors.white60,
                              ),
                              st2(
                                name: "Sulu",
                                tym: " Today 3:00pm",
                                stsimg: AssetImage(
                                    "lib/image/st9.jpg"),
                                clr: Colors.white60,
                              ),
                              st2(
                                name: "Surya",
                                tym: "Today 2:58pm",
                                stsimg: AssetImage(
                                    "lib/image/st12.jpg"),
                                clr: Colors.white60,
                              ),
                              st2(
                                name: "Athira",
                                tym: "Yesterday 11:00pm ",
                                stsimg: AssetImage(
                                    "lib/image/st10.jpg"),
                                clr: Colors.white60,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green.shade700,
                          child: Icon(Icons.camera_alt),
                        ),
                      ),
                      Positioned(
                        bottom: 80,
                        right: 10,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.black12,
                          child: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        color: Colors.black87,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              call(
                                colors: Colors.green,
                                pic: AssetImage("lib/image/st12.jpg"),
                                icn: Icons.insert_link_outlined,
                                tit: "Create a call link",
                                sub: "Share a link fo your WhatsApp call",
                                tra: null,
                                color: null,
                                callicn: null,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Recent",
                                  style: TextStyle(color: Colors.white60),
                                ),
                              ),
                              call(
                                colors: null,
                                pic: AssetImage("lib/image/call1.jpg"),
                                icn: null,
                                tit: "Sandra",
                                sub: "just now",
                                tra: Icons.videocam_rounded,
                                callicn: Icons.call_received,
                                color: Colors.green,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage(
                                    "lib/image/call2.jpg"),
                                icn: null,
                                tit: "Arun",
                                sub: "58 minitues",
                                tra: Icons.call,
                                callicn: Icons.call_received,
                                color: Colors.red,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage(
                                    "lib/image/call3.jpg"),
                                icn: null,
                                tit: "Nikhitha",
                                sub: "1 hour ago",
                                tra: Icons.videocam_rounded,
                                callicn: Icons.call_made_rounded,
                                color: Colors.green,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage(
                                    "lib/image/call4.jpg"),
                                icn: null,
                                tit: "Devika",
                                sub: "Today 4:00 pm",
                                tra: Icons.call,
                                callicn: Icons.call_made,
                                color: Colors.green,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage(
                                    "lib/image/call5.jpg"),
                                icn: null,
                                tit: "Shumi",
                                sub: "Today 3:30 pm",
                                tra: Icons.videocam_rounded,
                                callicn: Icons.missed_video_call,
                                color: Colors.red,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage("lib/image/call8.jpg"),
                                icn: null,
                                tit: "Surya",
                                sub: "Today 2:48 pm",
                                tra: Icons.videocam_rounded,
                                callicn: Icons.call_received,
                                color: Colors.green,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage(
                                    "lib/image/st12.jpg"),
                                icn: null,
                                tit: "Deepak",
                                sub: "Yeterday 5:00 pm",
                                tra: Icons.call,
                                callicn: Icons.call_made_rounded,
                                color: Colors.green,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage("lib/image/zain.jpg"),
                                icn: null,
                                tit: "Thappu",
                                sub: "Yesterday 4:45 pm",
                                tra: Icons.videocam_rounded,
                                callicn: Icons.videocam_rounded,
                                color: Colors.red,
                              ),
                              call(
                                colors: null,
                                pic: AssetImage("lib/image/st13.jpg"),
                                icn: null,
                                tit: " Sopna",
                                sub: "5 June 8:26 pm",
                                tra: Icons.call,
                                callicn: Icons.call_made,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green.shade700,
                          child: Icon(
                            Icons.add_ic_call_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
