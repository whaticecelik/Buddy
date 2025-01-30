import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/action_cards.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const HomeScreen());
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

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
      
      body: SafeArea(
        child: Column(
          
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          FilledButton.icon(
            onPressed: () => context.go("/home"),
            icon: Icon(Icons.star),
            label: Text("MY CLUBS"),
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          FilledButton.icon(
            onPressed: () => context.go("/explore"),
            icon: Icon(Icons.search, color: Theme.of(context).colorScheme.onSurface,),
            label: Text("EXPLORE CLUBS", style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

              ],
              
            ),
            
            Expanded(
              
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: EdgeInsets.all(24),
                  children: [
                    SuggestedActionCard(
                      image: Image.asset("assets/images/a1.jpg"),
                      title: "Friendly Zone",
                      subtitle: "1423 members",
                      onTap: () => context.push("/club"),
                    ),
                    SuggestedActionCard(
                      image: Image.asset("assets/images/a2.jpg"),
                      title: "Speak English Fluently",
                      subtitle: "3912 members",
                      onTap:  () => context.push("/club"),
                    ),
                    SuggestedActionCard(
                      image: Image.asset("assets/images/a3.jpg"),
                      title: "Unity",
                      subtitle: "5576 members",
                      onTap: () => context.push("/club"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
       
       // alt navigasyon çubuğu
       bottomNavigationBar: const BottomMenu(),

      );
    
  }
}
// style: Theme.of(context).textTheme.