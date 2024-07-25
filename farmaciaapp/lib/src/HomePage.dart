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
  int _selectedIndex =0;

  static List<Widget> _widgetOptions = <Widget>[
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                // Implementar ação para o Item 1
              },
            ),
            ListTile(
              title: Text('Comprar'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Enviar Receita'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Fidelidade'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Sobre Nós'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Termos de Uso'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Politica de Privacidade'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
            ListTile(
              title: Text('Fabappfarma'),
              onTap: () {
                // Implementar ação para o Item 2
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("lib/images/comprar.webp",width: 75, height: 75,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Image.asset("lib/images/fidelidade.png",width: 75, height: 75,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("lib/images/sobrenos.png",width: 75, height: 75,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("lib/images/receita.png",width: 75, height: 75,),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


