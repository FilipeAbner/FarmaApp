import 'package:flutter/material.dart';

class SobreNosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          // Seção: Logo da Farmácia
          Image.asset(
            'lib/images/logo.png',
            height: 150,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
          // Seção: Contatos
          _buildSection('Contatos',
              'Telefone: (11) 1234-5678\nE-mail: contato@farmacia.com'),
          // Seção: Quem Somos
          _buildSection('Quem Somos',
              'Somos uma farmácia comprometida com a qualidade...'),
          // Seção: Horário de Funcionamento
          _buildSection('Horário de Funcionamento',
              'Segunda a Sexta: 8h00 - 18h00\nSábado: 8h00 - 12h00'),
          // Seção: Legislação
          _buildSection('Legislação',
              'De acordo com a legislação vigente, a farmácia...'),
          // Seção: Outras informações
          _buildSection('Outras Informações',
              'Informações adicionais sobre a farmácia...'),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Cor de fundo do quadrado azul
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(10), // Espaçamento interno do quadrado azul
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Cor do texto dentro do quadrado azul
            ),
          ),
        ),
        SizedBox(height: 10), // Espaçamento entre o subtítulo e o conteúdo
        Container(
           // Cor de fundo do conteúdo
          padding: EdgeInsets.all(10), // Espaçamento interno do conteúdo
          child: Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(height: 20), // Espaçamento entre as seções
      ],
    );
  }
}
