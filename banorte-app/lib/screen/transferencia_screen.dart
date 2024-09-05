import 'package:banorte_app/widgets/custom_layout.dart';
import 'package:banorte_app/widgets/item_list_detail.dart';
import 'package:flutter/material.dart';

class TransferenciaScreen extends StatelessWidget {
  const TransferenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      title: 'Transferencia Screen',
      header: Container(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
          child: const Column(children: [
            Text(
              'Completada',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 223, 66),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text(
              "para Margarita Ortiz",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ])),
      columnaIzquierda: const SizedBox(
        height: 16,
      ),
      columnaCentro: Card(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.8),
          child: const Column(children: [
            SizedBox(height: 18),
            Icon(Icons.arrow_circle_right,
                color: Color.fromARGB(255, 245, 243, 239)),
          ])),
      columnaDerecha: const SizedBox(height: 18),
      searchSection: const SizedBox(
        height: 10,
      ),
      listSection: const ItemsListDetail(),
      content: Center(
        child: ElevatedButton(
          child: const Text('Ir a cuentas'),
          onPressed: () => Navigator.pushNamed(context, '/'),
        ),
      ),
    );
  }
}
