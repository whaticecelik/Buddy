import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

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
            icon: Icon(Icons.filter_list),
            onPressed: () {},
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
        

        body: ListView(
          children: [
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    image: DecorationImage(
                      image: AssetImage('assets/images/cat2.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ),
                  
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("Ada accepted your following request."),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Icon(
                    Icons.person
                  ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("Lilly started following you."),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),  
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    image: DecorationImage(
                      image: AssetImage('assets/images/a3.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ),
                  
                  ),
                 Divider(color: Theme.of(context).colorScheme.onSecondary),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("Your request to join Lille France got declined."),
                    ),
                  ),
                ],
              ),
            ),

            Divider(color: Theme.of(context).colorScheme.onSecondary),
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    image: DecorationImage(
                      image: AssetImage('assets/images/a1.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ),
                  
                  ),
                 Divider(color: Theme.of(context).colorScheme.onSecondary),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("Your request has been accepted into Friendly Zone. Say hi to your new clubmates!"),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    image: DecorationImage(
                      image: AssetImage('assets/images/a5.jpg'),
                      fit: BoxFit.cover, 
                    ),
                  ),
                  
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("You have been kicked out of Time to learn Russian!"),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            Container(
              height: 100,
              width: double.infinity, 
              child: Row(
                children: [
                  Container(
                  margin: EdgeInsets.all(20),
                  width: 50, 
                  height:50, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, 
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Icon(
                    Icons.person
                  ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("john started following you."),
                    ),
                  ),
                ],
              ),
            ),
           
          ],

        ),
       
       // alt navigasyon çubuğu
       bottomNavigationBar: const BottomMenu(),

      );
    
  }
}