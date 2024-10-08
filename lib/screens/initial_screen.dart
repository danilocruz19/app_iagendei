import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _selectIndex = 0; // Índice do BottomNavigationBar
  final PageController _pageController = PageController(); // Controlador do PageView

  // Método para atualizar o índice e mudar a página
  void _itemSelecionado(int index) {
    setState(() {
      _selectIndex = index; // Atualiza o índice selecionado
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 800), curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectIndex = index; // Atualiza o índice ao mudar de página
            });
          },
          children: [
            Container(color: Colors.red), // Página 1
            Container(color: Colors.blueAccent), // Página 2
            Container(color: Colors.green), // Página 3
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex, // Índice atual
        onTap: _itemSelecionado, // Método chamado ao tocar em um item
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Horários'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'),
        ],
      ),
    );
  }
}
