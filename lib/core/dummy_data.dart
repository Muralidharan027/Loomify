class DummyData {
  static final List<Map<String, dynamic>> savedContent = [
    {
      'id': '1',
      'title': 'Flutter Development Guide',
      'type': 'article',
      'url': 'https://flutter.dev',
      'timestamp': DateTime.now(),
    },
    {
      'id': '2',
      'title': 'Mobile App Design Tips',
      'type': 'video',
      'url': 'https://youtube.com',
      'timestamp': DateTime.now().subtract(const Duration(days: 1)),
    },
  ];
}
