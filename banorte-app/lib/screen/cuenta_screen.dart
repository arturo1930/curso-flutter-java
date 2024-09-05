import 'package:banorte_app/models/transaction_model.dart';
import 'package:banorte_app/widgets/custom_layout.dart';
import 'package:banorte_app/widgets/items_list.dart';
import 'package:flutter/material.dart';

class CuentaScreen extends StatelessWidget {

  final List<Transaction> transactions;
  final Function(int) onDelete;
  const CuentaScreen({super.key, required this.transactions, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      title: 'Cuenta Screen',
      header: Container(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
          child: const Column(children: [
            Text(
              'Cuenta de ahorro',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              'Saldo disponible en **** **** **** 5467',
              style: TextStyle(
                  color: Color.fromARGB(255, 192, 176, 176), fontSize: 19),
            ),
            Text(
              "\$32,890.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ])),
      columnaIzquierda: Card(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.8),
          child: const Column(children: [
            Icon(Icons.menu, color: Color.fromARGB(255, 245, 243, 239)),
            Text(
              "Estado de cuenta",
              style: TextStyle(color: Color.fromARGB(255, 245, 243, 239)),
            )
          ])),
      columnaCentro: Card(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.8),
          child: const Column(children: [
            Icon(Icons.co_present_outlined,
                color: Color.fromARGB(255, 245, 243, 239)),
            Text(
              "Detalles",
              style: TextStyle(color: Color.fromARGB(255, 245, 243, 239)),
            )
          ])),
      columnaDerecha: Card(
          color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.8),
          child: const Column(children: [
            Icon(Icons.abc_sharp, color: Color.fromARGB(255, 245, 243, 239)),
            Text(
              "Configurar",
              style: TextStyle(color: Color.fromARGB(255, 245, 243, 239)),
            )
          ])),
      searchSection: TextField(
        decoration: InputDecoration(
            hintText: "Buscar",
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            prefixIcon: const Icon(Icons.search, color: Colors.teal),
            filled: true,
            fillColor: Colors.white.withOpacity(0.7),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0)),
      ),
      listSection: ItemsList(transactions: transactions,onDelete: onDelete),
      content: Center(
        child: ElevatedButton(
          child: const Text('Ir a Transferencias'),
          onPressed: () => Navigator.pushNamed(context, '/transferencias'),
        ),
      ),
    );
  }
}
