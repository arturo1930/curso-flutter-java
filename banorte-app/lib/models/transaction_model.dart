class Transaction {
  final int id;
  final double amount;
  final String date;
  final String type;
  final bool favorite;
  final String name;

  Transaction({
    required this.id,
    required this.amount,
    required this.date,
    required this.type,
    required this.favorite,
    required this.name
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      amount: json['amount'],
      date: json['date'],
      type: json['type'],
      favorite: json['favorite'],
      name: json['name'],
    );
  }
}