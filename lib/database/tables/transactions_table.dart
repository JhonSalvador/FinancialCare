class TransactionsTable {
  static const String tableName = "transactions";

  static const String create =
      """

  CREATE TABLE $tableName (

    id INTEGER PRIMARY KEY AUTOINCREMENT,


    accountId INTEGER NOT NULL,


    description TEXT NOT NULL,


    category TEXT,


    amount REAL NOT NULL,


    type TEXT NOT NULL,


    transactionDate TEXT NOT NULL,


    createdAt TEXT NOT NULL,


    FOREIGN KEY(accountId)

    REFERENCES accounts(id)

  );

  """;
}
