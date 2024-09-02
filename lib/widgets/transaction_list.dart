import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Map<String, String>> transactions;

  const TransactionList({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Card(
          color: const Color(0xFF1F1F1F), // Fundo do cartão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            title: Text(
              transactions[index]['description'] ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              transactions[index]['date'] ?? '',
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              transactions[index]['amount'] ?? '',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
