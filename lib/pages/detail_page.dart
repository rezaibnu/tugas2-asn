import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemName;

  const DetailPage({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    String imageUrl = '';
    String description = '';
    String price = '';

switch (itemName) {
  case 'Sepatu':
    imageUrl = 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/sepatu.jpg';
    description = 'Sepatu olahraga modern dengan bahan breathable dan sol empuk.';
    price = 'Rp 750.000';
    break;
  case 'Tas':
    imageUrl = 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/tas.jpg';
    description = 'Tas kulit premium dengan desain minimalis dan tahan air.';
    price = 'Rp 520.000';
    break;
  case 'Jam Tangan':
    imageUrl = 'https://raw.githubusercontent.com/ibnuhidayah/assets/main/jamtangan.jpg';
    description = 'Jam tangan stylish dengan fitur water resistant dan tali kulit.';
    price = 'Rp 1.200.000';
    break;
}


    return Scaffold(
      appBar: AppBar(title: Text('Detail $itemName')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 200),
            const SizedBox(height: 16),
            Text(
              itemName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(description, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            Text(price, style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
