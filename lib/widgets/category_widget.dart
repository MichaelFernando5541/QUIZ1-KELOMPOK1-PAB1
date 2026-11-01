import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  final List<String> categories = const ['Semua', 'Pempek', 'Nasi', 'Minuman', 'Cemilan'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              label: Text(categories[index]),
              backgroundColor: index == 0 ? Colors.orange : Colors.white,
              labelStyle: TextStyle(
                color: index == 0 ? Colors.white : Colors.black87,
              ),
            ),
          );
        },
      ),
    );
  }
}
