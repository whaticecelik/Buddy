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
        leading: IconButton(icon: Icon(Icons.more_horiz), onPressed:() => _showMore(context),),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed:() => _showFilterDialog(context),
          ),
        ],
      ),



  

        body: ListView(
          children: [
            InkWell(
              onTap: (){},
              child: SizedBox(
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
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            InkWell(
              onTap: (){},
              child: SizedBox(
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
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),  
            InkWell(
              onTap: (){},
              child: Container(
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
            ),

            Divider(color: Theme.of(context).colorScheme.onSecondary),
            InkWell(
              onTap: (){},
              child: SizedBox(
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
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            InkWell(
              onTap: (){},
              child: SizedBox(
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
            ),
            Divider(color: Theme.of(context).colorScheme.onSecondary),
            InkWell(
              onTap: (){},
              child: SizedBox(
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
            ),
           
          ],

        ),
       
       // alt navigasyon çubuğu
       bottomNavigationBar: const BottomMenu(),

      );
    
  }
}


void _showFilterDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Filter', style: Theme.of(context).textTheme.titleLarge),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Wrap(
            spacing: 12,
            children: [
              FilterChip(
                label: Text('All'),
                selected: true,
                onSelected: (_) {},
              ),
              FilterChip(
                label: Text('Unread'),
                selected: false,
                onSelected: (_) {},
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Temizle'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Apply'),
        ),
      ],
    ),
  );
}



  void _showMore(BuildContext context) {

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Select', style: Theme.of(context).textTheme.titleLarge),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      actions: [
        ListTile(
          leading: Icon(Icons.check),
          title: Text('Mark all as read'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Delete all'),
          onTap: () {},
        ),
      ],
    ),
  );
}
