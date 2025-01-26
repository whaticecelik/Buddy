import 'package:flutter/material.dart';

class SuggestedActionCard extends StatelessWidget {
  final Widget image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SuggestedActionCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          child: ClipOval(
            child: SizedBox(
              width: 80,
              height: 80,
              child: image,
              
            ),
          ),
        ),
        title: Text(title,style: Theme.of(context).textTheme.titleLarge),
        subtitle: Text(subtitle,style: Theme.of(context).textTheme.bodyLarge),
        trailing:  Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
