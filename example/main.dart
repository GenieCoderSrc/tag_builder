import 'package:flutter/material.dart';
import 'package:tag_builder/tag_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tag Builder Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TagExamplePage(),
    );
  }
}

class TagExamplePage extends StatelessWidget {
  const TagExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tag Builder Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Primary Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Primary',
                type: TagType.primary,
                onPressed: () {
                  debugPrint('Primary Tag Clicked');
                },
              ),
              const SizedBox(height: 16),

              const Text('Primary Icon Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'With Icon',
                type: TagType.primaryIcon,
                icon: const Icon(Icons.star),
                onPressed: () {
                  debugPrint('Primary Icon Tag Clicked');
                },
              ),
              const SizedBox(height: 16),

              const Text('Outline Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Outline',
                type: TagType.outLine,
                onPressed: () {
                  debugPrint('Outline Tag Clicked');
                },
              ),
              const SizedBox(height: 16),

              const Text('Status Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Status',
                type: TagType.status,
              ),
              const SizedBox(height: 16),

              const Text('Offer Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Offer',
                type: TagType.offer,
              ),
              const SizedBox(height: 16),

              const Text('Gray Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Gray',
                type: TagType.gray,
              ),
              const SizedBox(height: 16),

              const Text('Chip Tag:'),
              const SizedBox(height: 8),
              AppTag(
                'Chip',
                type: TagType.chip,
                icon: const Icon(Icons.tag, size: 14),
              ),
              const SizedBox(height: 16),

              const Text('Rating Small Tag:'),
              const SizedBox(height: 8),
              AppTag(
                '4.5',
                type: TagType.rateSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}