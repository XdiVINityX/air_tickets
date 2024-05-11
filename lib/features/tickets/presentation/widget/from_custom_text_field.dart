import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FromCustomTextField extends StatelessWidget {
  const FromCustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 0,
          top: 0,
          bottom: 18,
          right: 0,
        ),
        hintStyle: textStyles.semibold16_130.apply(
          color: colors.inactive,
        ),
        hintText: 'Откуда - Москва',
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      textAlignVertical: TextAlignVertical.bottom,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[а-яА-Я\s]'),
        ),
      ],
    );
  }
}
