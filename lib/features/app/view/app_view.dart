import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  void _onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          body: const Center(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance, color: Colors.black),
                label: 'Авиабилеты',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.black),
                label: 'Отели',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: 'Короче',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: 'Подписки',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: 'Профиль',
                backgroundColor: Colors.blueGrey,
              ),
            ],
            onTap: _onItemPressed,
          ),
        ),
      );
}
