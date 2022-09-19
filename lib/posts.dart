import 'package:flutter/material.dart';

class posts extends StatefulWidget {
  const posts({Key? key}) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    List<Widget> posts = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Refactoring !!
          Container(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.verified_user)),
              trailing: Icon(Icons.close),
              title: Text('username'),
              subtitle: Text('active before'),
            ),
          ),
          Container(
            height: 20,
            child: Icon(
              Icons.post_add,
              size: 200,
            ), //use gesture detector!
          ),
          Divider(
            height: 320,
          ),
          Container(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.verified_user)),
              trailing: Icon(Icons.close),
              title: Text('username'),
              subtitle: Text('active before'),
            ),
          ),
          Container(
            height: 20,
            child: Icon(
              Icons.post_add,
              size: 200,
            ),
          ),
          Divider(
            height: 320,
          ),
          Container(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.verified_user)),
              trailing: Icon(Icons.close),
              title: Text('username'),
              subtitle: Text('active before'),
            ),
          ),
          Container(
            height: 20,
            child: Icon(
              Icons.post_add,
              size: 200,
            ),
          ),
          Divider(
            height: 320,
          ),
        ],
      )
    ];

    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.grey[200],
      child: ListView.builder(
        itemBuilder: (context, int index) {
          return posts[index];
        },
        itemCount: posts.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
