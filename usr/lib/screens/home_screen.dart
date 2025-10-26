import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // عدد الطلبات المؤقت
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('${index + 1}'),
              ),
              title: Text('طلب رقم ${index + 1}'),
              subtitle: const Text('من: مطعم البيتزا - إلى: شارع الملك فهد'),
              trailing: const Text('50 ريال'),
              onTap: () {
                Navigator.pushNamed(context, '/order_details');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // تحديث قائمة الطلبات
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('تم تحديث الطلبات')),
          );
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}