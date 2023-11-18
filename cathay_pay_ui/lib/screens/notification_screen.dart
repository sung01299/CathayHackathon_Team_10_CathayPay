import 'package:flutter/material.dart';
import 'package:cathay_pay_ui/Widget/Notification/Notification_Row.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Color(0xff005d63),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const NotificationRow(
              icon: Icons.priority_high,
              text: "IMPORTANT: Your payment was",
              color: Color(0xff037b7a)),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.back_hand,
              text: "Track your payment status.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          const NotificationRow(
              icon: Icons.credit_card,
              text: "Payment confirmation received.",
              color: Color(0xff037b7a)),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.check_circle,
              text: "Payment received, thank you!",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.sell,
              text: "Payment pending for September.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.check_circle,
              text: "Stay updated with important news.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.check_circle,
              text: "Payment scheduled for tomorrow.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.sell,
              text: "Payment processed successfully.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.sell,
              text: "Payment processed successfully.",
              color: Colors.grey.shade300),
          const SizedBox(height: 10),
          NotificationRow(
              icon: Icons.sell,
              text: "Payment processed successfully.",
              color: Colors.grey.shade300),
        ],
      ),
    );
  }
}
