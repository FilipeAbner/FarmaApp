import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnviarReceitaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          // Logo da farmácia
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'lib/images/logo.png',
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          // Título "Receitas"
          Padding(

            padding: EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueAccent, // Cor de fundo do quadrado azul
                borderRadius: BorderRadius.circular(30), // Borda arredondada
              ),
              child: Text(
                'Receitas',
                style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                ),
              ),
            ),
          ),
    // Campo para preenchimento de nome
          _buildTextField('Nome'),
          // Campo para preenchimento de telefone
          _buildTextField('Telefone'),
          // Campo para preenchimento de medicamento
          _buildTextField('Medicamento'),
          // Campo para anexar arquivo
          _buildFilePicker(),
          // Botão de enviar
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                // Implemente a lógica para enviar a receita
              },
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildFilePicker() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Anexar arquivo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {
              // Implemente a lógica para selecionar o arquivo
            },
            icon: Icon(Icons.attach_file),
          ),
        ],
      ),
    );
  }
}
