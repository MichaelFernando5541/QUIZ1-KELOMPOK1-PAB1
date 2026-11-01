import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: 8),
          const Text(
            'Buka Setiap Hari: 08.00 - 22.00 WIB',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Hubungi Layanan Pelanggan (CS)'),
          ),
        ],
      ),
    );
  }
}
