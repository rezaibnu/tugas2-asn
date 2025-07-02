import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

final List<Map<String, String>> items = const [
  {
    'name': 'Sepatu',
    'image': 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/sepatu.jpg',
  },
  {
    'name': 'Tas',
    'image': 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/tas.jpg',
  },
  {
    'name': 'Jam Tangan',
    'image': 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/jamtangan.jpg',
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.network(item['image']!, width: 50),
              title: Text(item['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(itemName: item['name']!),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
