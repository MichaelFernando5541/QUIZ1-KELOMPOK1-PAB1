import 'package:flutter/material.dart';

class MenuCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String desc;

  const MenuCardWidget({
    super.key, 
    required this.title, 
    required this.price, 
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.fastfood, color: Colors.deepOrange),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$desc\n$price', style: const TextStyle(color: Colors.grey)),
        isThreeLine: true,
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          onPressed: () {},
          child: const Text('Beli', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
