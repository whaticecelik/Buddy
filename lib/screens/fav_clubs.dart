import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/action_cards.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const favClubsScreen());
}
class favClubsScreen extends StatelessWidget{
  const favClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buddy",style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: ()=> context.push("/profile"),
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
      body: SafeArea(
        child: Column(
          
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Create your own club"),
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