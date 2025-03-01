import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onFilterTap;
  final ValueChanged<String> onChanged;

  const CustomSearchBar({
    super.key,
    required this.controller,
    required this.onFilterTap,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: SearchBar(
              controller: controller,
              hintText: 'Search saved content...',
              leading: const Icon(Icons.search),
              onChanged: onChanged,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: onFilterTap,
          ),
        ],
      ),
    );
  }
}
