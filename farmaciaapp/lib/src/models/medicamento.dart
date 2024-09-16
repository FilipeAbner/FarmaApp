import '../database/database.dart';

class Medicamento {
  int id;
  String nome;
  String imagem;
  double preco;
  double precoAntigo;
  double?
      precoDesconto; // Tornando o parâmetro opcional usando o tipo double?


  // Medicamento(){
  //   nome ='';
  //   imagem = '';
  // }
  Medicamento({
    this.nome = '',
    this.imagem = '',
    this.preco = 0.0,
    this.precoAntigo = 0,
    this.precoDesconto,
    this.id = 0// Parâmetro opcional
  });

  static Future<List<Medicamento>> findAll() async {
    var db = DB().getDatabase();

    var list = await db?.query('medicamento');
    // print(list);
    List<Medicamento> meds = [];
    list?.forEach((element) {
      int id = (element['id'] as int);
      String imagem = element['imagem'] as String;
      String nome = element['nome'] as String;
      double preco = (element['preco'] ?? 0.0) as double;
      double preco_antigo = (element['preco_antigo'] ?? 0.0) as double;
      double preco_desconto = (element['preco_desconto'] ?? 0.0) as double;

      Medicamento med = Medicamento();
      med.id = id;
      med.imagem = imagem;
      med.nome = nome;
      med.preco = preco;
      med.precoAntigo = preco_antigo;
      med.precoDesconto = preco_desconto;

      meds.add(med);
    });
      return meds;
    }
}
