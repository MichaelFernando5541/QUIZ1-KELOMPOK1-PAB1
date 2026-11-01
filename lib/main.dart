import 'package:flutter/material.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/greeting_widget.dart';
import 'widgets/search_widget.dart';
import 'widgets/category_widget.dart';
import 'widgets/menu_card_widget.dart';
import 'widgets/footer_widget.dart';

void main() {
  runApp(const KulinerApp());
}

class KulinerApp extends StatelessWidget {
  const KulinerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuliner Kita',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GreetingWidget(),
            SizedBox(height: 16),
            SearchWidget(),
            SizedBox(height: 16),
            CategoryWidget(),
            SizedBox(height: 16),
            Text(
              'Menu Populer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            MenuCardWidget(
              title: 'Pempek Lenggang', 
              price: 'Rp 15.000', 
              desc: 'Ikan segar dengan cuko khas Palembang',
            ),
            MenuCardWidget(
              title: 'Es Kacang Merah', 
              price: 'Rp 10.000', 
              desc: 'Minuman manis segar penutup hari',
            ),
            SizedBox(height: 16),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}