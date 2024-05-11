import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/tickets/presentation/widget/from_custom_text_field.dart';
import 'package:air_tickets/features/tickets/presentation/widget/to_custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketsModalDetail extends StatelessWidget {
  const TicketsModalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.backgroundSecondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            TopLane(),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: FrameFromTo(),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 18),
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    HelpIcon(
                      color: Colors.blue,
                      assetNameIcon: SvgIcons.path,
                      title: 'Сложный маршрут',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      // TODO(be79): work when width 82, mb need to change text style
                      width: 82,
                      child: HelpIcon(
                        color: Colors.black,
                        assetNameIcon: SvgIcons.path,
                        title: 'Куда угодно',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    HelpIcon(
                      color: Colors.black,
                      assetNameIcon: SvgIcons.path,
                      title: 'Выходные',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    HelpIcon(
                      color: Colors.black,
                      assetNameIcon: SvgIcons.path,
                      title: 'Горячие билеты',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopLane extends StatelessWidget {
  const TopLane({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.divider,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const SizedBox(
        height: 5,
        width: 38,
      ),
    );
  }
}

class FrameFromTo extends StatelessWidget {
  const FrameFromTo({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 96,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(SvgIcons.airplane2),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                        child: FromCustomTextField(),
                      ),
                    ],
                  ),
                  Divider(
                    color: colors.dividerSecondary,
                    height: 1,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 46),
                    child: Row(
                      children: [
                        SvgPicture.asset(SvgIcons.search),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: ToCustomTextField(),
                        ),
                        const Spacer(),
                        SvgPicture.asset(SvgIcons.cross),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HelpIcon extends StatelessWidget {
  const HelpIcon({
    super.key,
    required this.color,
    required this.title,
    required this.assetNameIcon,
  });

  final Color color;
  final String title;
  final String assetNameIcon;

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 79, minWidth: 64),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  assetNameIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: textStyles.regular14.apply(color: colors.primaryText),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
