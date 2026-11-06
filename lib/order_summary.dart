
import 'package:flutter/material.dart';
import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double unitPrice;

  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Order',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Item: $itemName',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  'Quantity: $quantity',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  'Unit Price: RM ${unitPrice.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18),
                ),
                const Divider(height: 30),
                Text(
                  'Total: RM ${total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
