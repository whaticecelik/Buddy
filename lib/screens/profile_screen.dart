import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(const ProfileScreen());
}
class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

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
                onTap: ()=>context.go("/login"),
              ),
            ],
          ),
        ),

        body: ListView(
          children: [
            Card(
              margin: EdgeInsets.only(top: 40),
              elevation: 0,
              child: SizedBox(
                height: 300,
                width: 300,
                child: CircleAvatar(
                  radius: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/cat.jpg"), 
                  radius: 200,
                ) ,
              ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Hatice" , style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin),
                      Text("Turkiye", style: Theme.of(context).textTheme.bodyLarge,)

                    ],
                  ),
                  SizedBox(height: 6),
                  Text("(Speaks Turkish, English, Russian)", style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_half),
                      SizedBox(width: 3,),
                      Text("4.5")

                    ]
                    ),
                ],
              ),
            ),
            Padding(
              
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Fav Clubs", style: Theme.of(context).textTheme.bodyLarge),
                      Text("3")
                    ]
                  ),
                  Column(
                    children: [
                  Text("Followers", style: Theme.of(context).textTheme.bodyLarge),
                      Text("56")
                    ]
                  ),
                  Column(
                    children: [
                  Text("Following", style: Theme.of(context).textTheme.bodyLarge),
                      Text("45")
                    ]
                  ),
                ],
              )
            ),
          ],
        ),
        

       
       
       // alt navigasyon çubuğu
       bottomNavigationBar: const BottomMenu(),

      );
    
  }
}