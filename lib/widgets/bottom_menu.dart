import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:go_router/go_router.dart';

void main(){
  runApp(const BottomMenu());
}

class BottomMenu extends StatelessWidget{
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){context.go("/home");}, icon: Icon(CupertinoIcons.home)),
          IconButton(onPressed: (){context.go("/msg");}, icon: Icon(CupertinoIcons.chat_bubble_text)),
          IconButton(onPressed: (){context.go("/call");}, icon: Icon(Icons.call_rounded)),
          IconButton(onPressed: (){context.go("/not");}, icon: Icon(CupertinoIcons.bell)),
          IconButton(onPressed: (){context.go("/profile");}, icon: Icon(CupertinoIcons.person)),
        ],
      ),

    );
  }
}