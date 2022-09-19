import 'package:flutter/material.dart';

class stories extends StatefulWidget {
  const stories({Key? key}) : super(key: key);

  @override
  State<stories> createState() => _storiesState();
}

class _storiesState extends State<stories> {
  int user=100;
  List<Widget> container = [
    storybox(
      story: Container(


        child: Column(

        ),
      ),
    ),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
    storybox(),
    VerticalDivider(
      width: 4,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      height: 150,
      color: Colors.grey[200],
      child: ListView.builder(
        itemBuilder: (context, int index) {
          return container[index];
        },
        itemCount: container.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class storybox extends StatelessWidget {
  Widget? story;
  storybox({this.story});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        height: 100,
        width: 100,
        child: story,
      ),
    );
  }
}
