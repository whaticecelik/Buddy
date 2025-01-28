import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
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
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.app),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),

       
      drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              
              ListTile(
                leading: Icon(CupertinoIcons.person),
                title: Text('Profile'),
                onTap: () => context.push("/profile"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: const Text("Recents"),
                onTap: (){
              },
              ),
              ListTile(
                leading: Icon(CupertinoIcons.settings),
                title: Text('Settings'),
                onTap: () => context.push("/settings"),
              ),
              Spacer(),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                onTap: () {},
              ),
            ],
          ),
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