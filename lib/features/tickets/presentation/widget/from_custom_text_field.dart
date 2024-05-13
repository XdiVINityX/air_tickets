import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FromCustomTextField extends StatefulWidget {
  const FromCustomTextField(
      {super.key,
      required this.onChanged,
      required this.destinationQuery,});

  final ValueChanged<String> onChanged;
  final String? destinationQuery;


  @override
  State<FromCustomTextField> createState() => _FromCustomTextFieldState();
}

class _FromCustomTextFieldState extends State<FromCustomTextField> {
  late TextEditingController textEditingController;



  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.destinationQuery);
    textEditingController.addListener(_onTextChanged);
    super.initState();
  }

  void _onTextChanged() {
    widget.onChanged(textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return TextField(
      style: textStyles.semibold16.apply(color: colors.primaryText),
      controller: textEditingController,
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
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
