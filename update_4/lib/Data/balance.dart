
class Balance {
  final double amount;
  final DateTime date;

  Balance({required this.amount, required this.date});
}

final balances = [
  Balance(amount: 100.0, date: DateTime(2023, 5, 1)),
  Balance(amount: 200.0, date: DateTime(2023, 4, 29)),
  Balance(amount: 150.0, date: DateTime(2023, 4, 28)),
  Balance(amount: 300.0, date: DateTime(2023, 4, 27)),
  Balance(amount: 175.0, date: DateTime(2023, 4, 30)),
  Balance(amount: 250.0, date: DateTime(2023, 4, 26)),
  Balance(amount: 225.0, date: DateTime(2023, 4, 25)),
];
