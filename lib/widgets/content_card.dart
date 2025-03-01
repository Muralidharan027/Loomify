import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String type;
  final VoidCallback onTap;
  final VoidCallback onMoreTap;

  const ContentCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.onTap,
    required this.onMoreTap,
  });

  IconData _getIconForType(String type) {
    switch (type) {
      case 'video':
        return Icons.video_library;
      case 'article':
        return Icons.article;
      case 'link':
        return Icons.link;
      default:
        return Icons.bookmark;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(_getIconForType(type)),
        title: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
        subtitle: Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: onMoreTap,
        ),
        onTap: onTap,
      ),
    );
  }
}
