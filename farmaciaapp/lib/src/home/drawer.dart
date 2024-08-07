import 'package:flutter/material.dart';

Drawer layoutDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
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
  );
}
