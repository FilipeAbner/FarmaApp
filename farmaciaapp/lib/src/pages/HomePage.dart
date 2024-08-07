import 'package:farmaciaapp/src/home/drawer.dart';
import 'package:farmaciaapp/src/home/navigator.dart';
import 'package:flutter/material.dart';
import 'comprar.dart';
import 'fidelidade.dart';
import 'enviarreceita.dart';
import 'sobrenos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    ComprarPage(),
    FidelidadePage(),
    SobreNosPage(),
    EnviarReceitaPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'lib/images/logo.png', // Caminho da imagem
            fit: BoxFit.contain, // Ajuste a imagem ao tamanho da AppBar
            height: 100, // Altura da imagem
          ),
        ),
      ),
      drawer: layoutDrawer(),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: bottomNavigationBar(_selectedIndex, _onItemTapped),
    );
  }
}
