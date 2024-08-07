class Medicamento {
  final String nome;
  final String imagem;
  final double preco;
  final double precoAntigo;
  final double?
      precoDesconto; // Tornando o parâmetro opcional usando o tipo double?

  Medicamento({
    required this.nome,
    required this.imagem,
    required this.preco,
    this.precoAntigo = 0,
    this.precoDesconto, // Parâmetro opcional
  });
}
