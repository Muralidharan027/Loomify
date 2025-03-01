import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';

class ContentDetailScreen extends StatelessWidget {
  final Map<String, dynamic> content;

  const ContentDetailScreen({super.key, required this.content});

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Content Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO: Implement edit functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // TODO: Show delete confirmation dialog
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Content icon and type
            Row(
              children: [
                Icon(
                  _getIconForType(content['type'] as String),
                  size: 32,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  content['type'] as String,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Title
            Text(
              content['title'] as String,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            // URL
            Text(
              content['url'] as String,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 32),
            // Open button
            CustomButton(
              text: 'Open Content',
              icon: Icons.open_in_new,
              onPressed: () {
                // TODO: Implement URL launching
              },
            ),
            const SizedBox(height: 16),
            // Share button
            CustomButton(
              text: 'Share',
              icon: Icons.share,
              isOutlined: true,
              onPressed: () {
                // TODO: Implement sharing
              },
            ),
          ],
        ),
      ),
    );
  }
}
