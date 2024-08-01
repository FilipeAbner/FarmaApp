import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnviarReceitaPage extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _medicamentoController = TextEditingController();

  void _salvarValores() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString("nome", _nomeController.text);
    await prefs.setString("telefone", _telefoneController.text);
    await prefs.setString("medicamento", _medicamentoController.text);
  }

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
          _buildTextField('Nome', _nomeController),
          // Campo para preenchimento de telefone
          _buildTextField('Telefone', _telefoneController),
          // Campo para preenchimento de medicamento
          _buildTextField('Medicamento', _medicamentoController),
          // Campo para anexar arquivo
          _buildFilePicker(),
          // Botão de enviar
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                _salvarValores();
              },
              child: Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
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
