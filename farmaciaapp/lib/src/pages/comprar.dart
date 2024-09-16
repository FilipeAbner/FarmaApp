import 'package:flutter/material.dart';
import '../models/medicamento.dart';

class ComprarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Medicamento.findAll().then(
      (value) => {
        medicamentos = value,
      },
    );
    return Scaffold(
      body: ListView.builder(
        itemCount: medicamentos.length,
        itemBuilder: (context, index) {
          return _buildMedicamentoCard(medicamentos[index]);
        },
      ),
    );
  }

  Widget _buildMedicamentoCard(Medicamento medicamento) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                medicamento.imagem,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    medicamento.nome,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  if (medicamento.precoDesconto !=
                      null) // Verifica se há desconto
                    Row(
                      children: [
                        Text(
                          'De: ${medicamento.precoAntigo.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Por: ${medicamento.precoDesconto!.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors
                                .green, // Cor verde para o preço com desconto
                          ),
                        ),
                      ],
                    )
                  else // Caso contrário, exibe apenas o preço padrão
                    Text(
                      medicamento.preco.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors
                            .black, // Cor vermelha para o preço sem desconto
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Lista de medicamentos de exemplo
List<Medicamento> medicamentos = [];
