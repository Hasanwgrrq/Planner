import 'package:flutter/material.dart';

void main() {
  runApp(const DeliveryBoyApp());
}

class DeliveryBoyApp extends StatelessWidget {
  const DeliveryBoyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Delivery Boy',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const DeliveryDashboard(),
    );
  }
}

class DeliveryDashboard extends StatelessWidget {
  const DeliveryDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Deliveries'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          DeliveryCard(
            orderId: '#1092',
            restaurantName: 'Burger Joint',
            customerAddress: '123 Main Street',
            status: 'Ready for Pickup',
          ),
        ],
      ),
    );
  }
}

class DeliveryCard extends StatelessWidget {
  final String orderId;
  final String restaurantName;
  final String customerAddress;
  final String status;

  const DeliveryCard({
    super.key,
    required this.orderId,
    required this.restaurantName,
    required this.customerAddress,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order $orderId', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 8),
            Text('From: $restaurantName'),
            Text('To: $customerAddress'),
            const SizedBox(height: 8),
            Text('Status: $status', style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Accept Order'),
            ),
          ],
        ),
      ),
    );
  }
}
