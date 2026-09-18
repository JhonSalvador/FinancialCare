class AccountModel {
  final int? id;

  final String name;

  final String institution;

  final String accountType;

  final double initialBalance;

  final bool active;

  final DateTime createdAt;

  AccountModel({
    this.id,

    required this.name,

    required this.institution,

    required this.accountType,

    required this.initialBalance,

    required this.active,

    required this.createdAt,
  });

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
      id: map['id'],

      name: map['name'],

      institution: map['institution'],

      accountType: map['accountType'],

      initialBalance: (map['initialBalance'] as num).toDouble(),

      active: map['active'] == 1,

      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,

      'name': name,

      'institution': institution,

      'accountType': accountType,

      'initialBalance': initialBalance,

      'active': active ? 1 : 0,

      'createdAt': createdAt.toIso8601String(),
    };
  }
}
