import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'story.dart';
import 'posts.dart';
import 'buttonappbar.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar:
      backgroundColor: Color(0xffccccd0),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1),
            ),
            centerTitle: false,
            actions: [
              GestureDetector(
                onTap: () {
                  print('search');
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ))),
              ),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          MdiIcons.facebookMessenger,
                          size: 30,
                          color: Colors.black,
                        ))),
                onTap: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(MdiIcons.image),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: 'Whats on your mind'),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    height: 15,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: null,
                          child: Icon(
                            Icons.videocam,
                            color: Colors.red,
                          ),
                        ),
                        Text('Go-Live'),
                        VerticalDivider(
                          width: 8.0,
                        ),
                        TextButton(
                          onPressed: null,
                          child: Icon(
                            Icons.photo_library,
                            color: Colors.green,
                          ),
                        ),
                        Text('Photos'),
                        VerticalDivider(
                          width: 8.0,
                        ),
                        TextButton(
                          onPressed: null,
                          child: Icon(
                            Icons.video_call,
                            color: Colors.purple,
                          ),
                        ),
                        Text('Room'),
                        VerticalDivider(
                          width: 8.0,
                        ),
                      ],
                    ),
                  ),
                  stories(),
                  Divider(height: 10,),
                  posts(),
                  bottom(),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
