import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  static final DB _instance = DB._internal();

  Database? _database;
  final String _dbname = 'farmaAppDb.db';

  DB._internal() {
    _startDB();
  }

  factory DB() {
    return _instance;
  }

  Database? getDatabase() {
    return _database;
  }

  void _startDB() async {
    var dbpath = await getDatabasesPath();
    String path = join(dbpath, _dbname);
    print(path);
    _database = await openDatabase(
      path,
      version: 1,
      // onCreate: (db, version) async =>
      // {
      //   await db.execute(
      //       "CREATE TABLE medicamento (id INTEGER PRIMARY KEY, nome TEXT, preco REAL, preco_antigo REAL, preco_desconto REAL, imagem TEXT)"),
      // },
    );
    _cargaDados();
  }

  void _cargaDados() async {
    await _database?.transaction((txn) async =>
    {
      await txn.insert('medicamento', {
        'nome': 'Paracetamol',
        'preco': 10.0,
        'preco_antigo': 12.0,
        'preco_desconto': 9.0,
        'imagem': 'lib/images/paracetamol.jpg',
      }),
      await txn.insert('medicamento', {
        'nome': 'Dipirona',
        'preco': 8.0,
        'preco_antigo': 10.0,
        'preco_desconto': 7.0,
        'imagem': 'lib/images/dipirona.jpg',
      }),
      await txn.insert('medicamento', {
        'nome': 'Ibuprofeno',
        'preco': 15.0,
        'imagem': 'lib/images/ibuprofeno.jpg',
      }),
      await txn.insert('medicamento', {
      'nome': 'Aspirina',
      'preco': 10.0,
      'imagem': 'lib/images/aspirina.jpg',
    }),
    });
  }
}
