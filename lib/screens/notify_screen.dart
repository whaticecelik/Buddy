import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const NotifyScreen());
}
class NotifyScreen extends StatelessWidget{
  const NotifyScreen({super.key});

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

       
       // alt navigasyon çubuğu
       bottomNavigationBar: const BottomMenu(),

      );
    
  }
}