import 'package:flutter/material.dart';

void main() {
  runApp(const NearHubApp());
}

class NearHubApp extends StatelessWidget {
  const NearHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NearHuB Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NearHuB Dashboard',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to NearHuB 👋',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              _buildMoodCard('Verified Seller / Buyer', Icons.verified, Colors.blueAccent),
              _buildMoodCard('Tour Mode', Icons.travel_explore, Colors.teal),
              _buildMoodCard('Service Mode', Icons.home_repair_service, Colors.orangeAccent),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildMoodCard(String title, IconData icon, Color color) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 2),
        boxShadow: [
          BoxShadow(color: color.withOpacity(0.3), blurRadius: 10, spreadRadius: 3),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 40),
          const SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
