import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ToCustomTextField extends StatelessWidget {
  const ToCustomTextField({super.key, required this.onPressed, required this.autofocus});

  final bool autofocus;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return TextField(
      style: textStyles.semibold16.apply(color: colors.primaryText),
      autofocus: autofocus,
      onTap: onPressed,
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: 'Куда - Турция',
        hintStyle: textStyles.semibold16_130.apply(color: colors.inactive),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      textAlign: TextAlign.left,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[а-яА-Я\s]'),
        ),
      ],
    );
  }
}
