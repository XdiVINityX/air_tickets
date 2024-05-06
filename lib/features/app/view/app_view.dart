import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/hotel/domain/bloc/hotel_bloc.dart';
import 'package:air_tickets/features/hotel/presentation/view/hotel_view.dart';
import 'package:air_tickets/features/tickets/domain/bloc/tickets_bloc.dart';
import 'package:air_tickets/features/tickets/presentation/tickets_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
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
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;

  void _onItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  static final List<Widget> _widgetOptions = [
    BlocProvider(
      create: (context) => TicketsBloc(),
      child: const TicketsView(),
    ),
    BlocProvider(
      create: (context) => HotelBloc(),
      child: const HotelView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
      ),
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
          currentIndex: _selectedIndex,
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
          onTap: _onItemPressed,
        ),
      ),
    );
  }
}
