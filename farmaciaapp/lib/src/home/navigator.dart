import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar(
    int selectedIndex, void Function(int) onItemTapped) {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Image.asset(
            "lib/images/comprar.webp",
            width: 75,
            height: 75,
          ),
          label: ''),
      BottomNavigationBarItem(
        icon: Image.asset(
          "lib/images/fidelidade.png",
          width: 75,
          height: 75,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "lib/images/sobrenos.png",
          width: 75,
          height: 75,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "lib/images/receita.png",
          width: 75,
          height: 75,
        ),
        label: '',
      ),
    ],
    currentIndex: selectedIndex,
    onTap: onItemTapped,
  );
}
