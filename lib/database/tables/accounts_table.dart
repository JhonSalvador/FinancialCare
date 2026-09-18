class AccountsTable {
  static const String tableName = "accounts";

  static const String create =
      """

  CREATE TABLE $tableName (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    institution TEXT NOT NULL,

    accountType TEXT NOT NULL,

    initialBalance REAL DEFAULT 0,

    active INTEGER DEFAULT 1,

    createdAt TEXT NOT NULL

  );

  """;
}
