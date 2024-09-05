import 'package:banorte_app/models/transaction_model.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  final List<Transaction> transactions;
  final Function(int) onDelete;

  const ItemsList({super.key, required this.transactions, required this.onDelete});

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Your widget implementation here
    );
  }
}
