import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(const ClubScreen());
}
class ClubScreen extends StatelessWidget{
  const ClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          title: Text("Buddy",style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: ()=> context.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.app),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),

      body: Stack(
          children: [
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Write your message...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          ),
        
       
      // alt navigasyon çubuğu
      bottomNavigationBar: const BottomMenu(),

      );
    
  }
}