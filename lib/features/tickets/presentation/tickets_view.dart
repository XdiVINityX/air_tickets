import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TicketsView extends StatefulWidget {
  const TicketsView({super.key});

  @override
  State<TicketsView> createState() => _TicketsViewState();
}

class _TicketsViewState extends State<TicketsView> {
  String _departureLocation = '';
  String _arrivalLocation = '';

  @override
  void initState() {
    super.initState();
    _loadLastInput();
  }

  Future<void> _loadLastInput() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _departureLocation = prefs.getString('departureLocation') ?? '';
      _arrivalLocation = prefs.getString('arrivalLocation') ?? '';
    });
  }

  Future<void> _saveInput() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('departureLocation', _departureLocation);
    await prefs.setString('arrivalLocation', _arrivalLocation);
  }

  void _showAdditionalInformation() {}

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return Column(
      children: [
        const SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 94),
          child: Text(
            textAlign: TextAlign.center,
            'Поиск дешевых авиабилетов',
            style: textStyles.semibold22.apply(
              color: colors.primaryText,
            ),
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            height: 122,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: colors.primary),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.secondary,
                    border: Border.all(color: colors.secondary),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    children: [
                      const Text('Лупа'),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            // TODO(add): extract widget
                            //Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    _departureLocation = value;
                                  });
                                  _saveInput();
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  hintStyle: textStyles.semibold16_130
                                      .apply(color: colors.inactive,),
                                  hintText: 'Откуда - Москва',
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                //textAlign: TextAlign.left,
                                //textAlignVertical:TextAlignVertical.bottom,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[а-яА-Я\s]'),
                                  ),
                                ],
                              ),
                            ),
                            Divider( color: colors.divider,height: 1,),
                            // TODO(add): extract widget
                           Expanded(
                             child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      _arrivalLocation = value;
                                    });
                                    _saveInput();
                                  },
                                  onTap: _showAdditionalInformation,
                                  decoration: InputDecoration(
                                   // contentPadding: EdgeInsets.only(top: 18),
                                    hintText: 'Куда - Турция',
                                    hintStyle: textStyles.semibold16_130
                                        .apply(color: colors.inactive),
                                    border: const OutlineInputBorder(
                                     // borderSide: BorderSide.none,
                                    ),
                                  ),
                                 textAlign: TextAlign.left,
                                  textAlignVertical:TextAlignVertical.top,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp(r'[а-яА-Я\s]'),
                                    ),
                                  ],
                                ),
                              ),
                           ),
                           // Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
