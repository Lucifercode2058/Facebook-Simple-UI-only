import 'package:flutter/material.dart';
class bottom extends StatelessWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        child: BottomAppBar(

          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Icon(Icons.home,color: Colors.white,),
                onTap: (){},
              ),
              GestureDetector(
                child: Icon(Icons.notifications,color: Colors.white,),
              ),
              GestureDetector(
                child: Icon(Icons.watch,color: Colors.white,),
              ),
              GestureDetector(
                child: Icon(Icons.feed,color: Colors.white,),
              ), GestureDetector(
                child: Icon(Icons.menu,color: Colors.white,),
              )


            ],
          ),
        ),
      ),
    );


  }
}
