import 'package:flutter/material.dart';

class CustomLayout extends StatelessWidget {
  final String title;
  final Widget header;
  final Widget content;

  final Widget columnaIzquierda;
  final Widget columnaCentro;
  final Widget columnaDerecha;

  final Widget searchSection;
  final Widget listSection;

  const CustomLayout({
    super.key,
    required this.title,
    required this.header,
    required this.content,
    required this.columnaIzquierda,
    required this.columnaCentro,
    required this.columnaDerecha,
    required this.searchSection,
    required this.listSection,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: header),
          _buildThreeColumns(columnaIzquierda, columnaCentro, columnaDerecha),
          Expanded(child: searchSection),
          Expanded(child: listSection),
          Expanded(child: content)
        ],
      ),
    );
  }

  Widget _buildThreeColumns(Widget izquierdo, Widget centro, Widget derecho) {
    return SizedBox(
      height: 100,
      child: Row(children: [
        Expanded(child: izquierdo),
        Expanded(child: centro),
        Expanded(child: derecho)
      ]),
    );
  }
}
