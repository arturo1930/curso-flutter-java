import 'package:flutter/material.dart';

class ItemsListDetail extends StatelessWidget {
  const ItemsListDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: ListView(
        children: [itemWidgetUp(), itemWidgetDown(), itemWidgetUp(),itemWidgetUp(), itemWidgetDown(), itemWidgetUp()],
      ),
    );
  }

  Widget itemWidgetDown() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 66, 66, 68).withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const Icon(Icons.arrow_downward),
          const SizedBox(width: 16),
          Text(
            'Disposicion en cajero',
            style: TextStyle(color: Colors.grey[300]),
          ),
          const SizedBox(width: 16),
          const Text(' -\$100.00',
              style: TextStyle(color: Color.fromARGB(255, 223, 118, 236))),
        ],
      ),
    );
  }

  Widget itemWidgetUp() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 66, 66, 68).withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const Icon(Icons.arrow_upward),
          const SizedBox(width: 16),
          Text(
            'Disposicion en cajero',
            style: TextStyle(color: Colors.grey[300]),
          ),
          const SizedBox(width: 16),
          const Text(' -\$100.00',
              style: TextStyle(color: Color.fromARGB(255, 61, 243, 152))),
        ],
      ),
    );
  }
}

 