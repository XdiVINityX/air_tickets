import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  ThemeData _darkTheme() => ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          AppColorScheme.dark(),
          AppTextTheme.base(),
        ],
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: _darkTheme(),
        darkTheme: _darkTheme(),
        home: HomeScreen(
          selectedIndex: _selectedIndex,
          onItemPressed: _onItemPressed,
        ),
      );
}

class HomeScreen extends StatelessWidget {

  const HomeScreen({
    super.key,
    required this.selectedIndex,
    required this.onItemPressed,
  });
  final int selectedIndex;
  final void Function(int) onItemPressed;

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 54,
        child: BottomNavigationBar(
          unselectedItemColor: colors.inactive,
          backgroundColor: colors.background,
          selectedItemColor: colors.subtitle,
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          selectedLabelStyle: textStyles.regular10_110,
          showUnselectedLabels: true,
          enableFeedback: false,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  SvgIcons.airplane,
                ),
              ),
              label: 'Авиабилеты',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  SvgIcons.hotels,
                ),
              ),
              label: 'Отели',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  SvgIcons.shorter,
                ),
              ),
              label: 'Короче',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  SvgIcons.subscribe,
                ),
              ),
              label: 'Подписки',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  SvgIcons.profile,
                ),
              ),
              label: 'Профиль',
            ),
          ],
          onTap: onItemPressed,
        ),
      ),
    );
  }
}
