class TransactionModel {
  final int? id;

  final int accountId;

  final String description;

  final String category;

  final double amount;

  final String type;

  final DateTime transactionDate;

  final DateTime createdAt;

  TransactionModel({
    this.id,

    required this.accountId,

    required this.description,

    required this.category,

    required this.amount,

    required this.type,

    required this.transactionDate,

    required this.createdAt,
  });

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'],

      accountId: map['accountId'],

      description: map['description'],

      category: map['category'],

      amount: (map['amount'] as num).toDouble(),

      type: map['type'],

      transactionDate: DateTime.parse(map['transactionDate']),

      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,

      'accountId': accountId,

      'description': description,

      'category': category,

      'amount': amount,

      'type': type,

      'transactionDate': transactionDate.toIso8601String(),

      'createdAt': createdAt.toIso8601String(),
    };
  }
}
