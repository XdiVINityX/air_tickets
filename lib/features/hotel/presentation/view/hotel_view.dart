import 'package:flutter/material.dart';

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  @override
  Widget build(BuildContext context) => const ColoredBox(
    color: Colors.white,
    child: Text('Hotel screen'),
  );
}
